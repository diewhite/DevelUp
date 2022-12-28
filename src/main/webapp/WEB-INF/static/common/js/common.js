// nav  
function menuover(id){
    $('.dep2_wrap').removeClass('active');
    var select = $(id).next();
    select.addClass('active');
  }

  function menuout(){
    $('.dep2_wrap').removeClass('active');
  }

//date

function fnCodeCallback() {
  const code = arguments[0];
  const option = { 
                  BRTH_JRRN_DIV_CD  : { type: ['radio'], column: ['BRTH_JRRN_DIV_CD'], target: ['radio_target'], selectValue: ['01'], firstCode: [], changeCallback: [''] },
                  ENPR_SHPE_CD : { type: ['select'], column: ['ENPR_SHPE_CD'], target: ['select_target_1'], selectValue: [''], firstCode: [], title: ['기업형태'], changeCallback: [] },
                  AREA_CD : { type: ['select','select','select','select',], column: ['HOFS_TLNO_1','HOFS_FAXNO_1','CHGP_TLNO_1','CHGP_FAXNO_1'], target: ['select_target_2','select_target_3','select_target_5','select_target_7'], selectValue: ['','','',''], firstCode: [crudType02,crudType02,crudType02,crudType02], title: ['본사 전화번호','본사 팩스번호','담당자 전화번호','담당자 팩스번호'], changeCallback: [] },
                  MBTN_CD : { type: ['select'], column: ['CHGP_MBTN_1'], target: ['select_target_6'], selectValue: [''], firstCode: [crudType02], title: ['담당자 휴대전화번호'], changeCallback: [] },
                  EM_CD : { type: ['select'], column: [''], target: ['select_target_4'], selectValue: [''], firstCode: [], title: ['이메일'], changeCallback: ['selectChange'] },
                  TEC_FLD_CD : { type: ['select'], column: ['TEC_FLD_CD'], target: ['select_target_8'], selectValue: [''], firstCode: [], title: ['기술분야'], changeCallback: [] }
                 };
  fnDrawCode(code, option);
}


window.onload = async function() {
  const codeSearch = [{ COM_GRUP_CD_ID: 'BRTH_JRRN_DIV_CD' },{ COM_GRUP_CD_ID: 'ENPR_SHPE_CD' },{ COM_GRUP_CD_ID: 'AREA_CD' },{ COM_GRUP_CD_ID: 'MBTN_CD' },{ COM_GRUP_CD_ID: 'EM_CD' },{ COM_GRUP_CD_ID: 'TEC_FLD_CD' }];
  fnGetCode(codeSearch, fnCodeCallback);

  document.getElementById('PSLF_AHTN_INFO_KEYV').value = ''
  const bzno = '';
  document.getElementById('BZNO_1').value = bzno.substr(0,3);
  document.getElementById('BZNO_2').value = bzno.substr(3,2);
  document.getElementById('BZNO_3').value = bzno.substr(5,5);

  const getDatePickerTitle = elem => {
    const label = elem.nextElementSibling;
    let titleText = '';
    if (label && label.tagName === 'LABEL') {
        titleText = label.textContent;
    } else {
        titleText = elem.getAttribute('aria-label') || '';
    }
    return titleText;
  }

  const elems = document.querySelectorAll('.datepicker_input');
  for (const elem of elems) {
    const datepicker = new Datepicker(elem, {
        language: 'ko',
        format: 'yyyy-mm-dd',
        title: getDatePickerTitle(elem)
    });
  }
}

function fnGetCode(args, callback) {
  return new Promise((resolve, reject) => {
    const data = JSON.stringify({ Com0101Vo: args });
    const httpRequest = new XMLHttpRequest();
    httpRequest.onload = () => {
      if(httpRequest.readyState === XMLHttpRequest.DONE) {
        if(httpRequest.status === 200) {
          resolve(httpRequest);
        } else {
          reject(httpRequest);
        }
        if(isNotEmpty(callback)) callback(httpRequest);
      }
    };
    httpRequest.responseType = 'json';
    httpRequest.open('POST', environment.apiUrl + '/com/com0101/getCode', true);
    httpRequest.setRequestHeader('Content-Type', 'application/json');
    httpRequest.send(data);
  }).catch((error)=> {
    return error;
  });
}


function fnCheck() {
  const target = arguments[0];
  const checkAll = findParentBySelector(target, 'table').querySelector('thead #CHK_ALL');
  if(!target.checked) {
    if(checkAll?.checked) checkAll.checked = false;
  }
}

function fnCheckAll() {
  const checkbox = arguments[0];
  const tbody = findParentBySelector(checkbox, 'table').querySelector('tbody');
  [...tbody.querySelectorAll('tr:not(.hidden) input[name=CHK]')].map(m => {
    if(checkbox.checked) {
      m.checked = true;
    } else {
      m.checked = false;
    }
  });
}


//auction
function change_image(image){
    var auctionimg_container = document.getElementById("auction-image");
       auctionimg_container.src = image.src;
}
