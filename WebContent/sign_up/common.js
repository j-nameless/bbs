//
//�ο�����js������˵��

//ʹ��ע�����ȫѡ��������ΪcheckAll

//���ܣ��ı�ѡ���¼�ı���ɫ
//����˵������ǰ�����󣬵�ǰ����ĸ�ѡ�����,��ǰ�����еĶ���

function changeBgColor(form,objCheck,objTr){
	if(objCheck.checked==true)
	   objTr.style.backgroundColor = '#FDFCDA';
	else{
            objTr.style.backgroundColor = '';
            form.checkAll.checked = false;
	}
}

//���ܣ���ȫѡ�����ı�ѡ��ı���ɫ
//����˵������ǰ������,ѡ�������,ѡ���ĸ���
function CheckAll(form,checkboxName,checklength)
{
	for (var i=0;i<form.elements.length;i++)
	{
		var e = form.elements[i];
		if (e.name == checkboxName)
		e.checked = form.checkAll.checked;
	}
	if(form.checkAll.checked==true){
		for(var j=1;j<checklength+1;j++){
		  eval("trObj"+j+".style.backgroundColor = '#FDFCDA'");
		}
	}
	else{
		for(var j=1;j<checklength+1;j++){
		  eval("trObj"+j+".style.backgroundColor = ''");
		}
	}
}

//���ܣ�����ǰ�ж��Ƿ�ѡ��ȷ��
//����˵������ǰ����������������
function CheckInfo(form,Str){
	if(isTrueInfo(form,Str)){
		if(confirm("ȷ��"+Str+"��?")){
     	 		form.submit();
		}
	return false;
	}
}
function isTrueInfo(form,Str){
	var flag = false;
	for (var i=0;i<form.elements.length;i++){
   		var e = form.elements[i];
       		if(e.name != "checkAll"&&e.checked == true) flag=true;
      	}
	if(flag == false) alert("��ѡ��Ҫ"+Str+"�����ݼ�¼!");
	return flag;
}

function verifyImgRefresh() {
	document.getElementById("randimg").src="image.aspx";
}

function verifyImgRefresh2() {
	document.getElementById("randimg").src="image.aspx";
}


function CharMode(iN) {
   if (iN>=48 && iN <=57) 
    return 1;
   if (iN>=65 && iN <=90) 
    return 2;
   if (iN>=97 && iN <=122) 
    return 4;
   else
    return 0; 
}

function bitTotal(num) {
   modes=0;
   for (i=0;i<3;i++) {
    if (num & 1) modes++;
     num>>>=1;
    }
   return modes;
}

function checkStrong(sPW) {
	spwlength = sPW.length;
   if (spwlength<6||spwlength>16)
    return 0; 
    Modes=0;
    for (i=0;i<spwlength;i++) {
     chmod = CharMode(sPW.charCodeAt(i));
     if(chmod==0)
     return 0;
     Modes|=CharMode(sPW.charCodeAt(i));
   }
   chspan = bitTotal(Modes);
   if(chspan==1)
   {
   return 1;
   }
   if(chspan==2)
   {
   		if(spwlength>=6&&spwlength<=8)
   		return 1;
   		if(spwlength>=9&&spwlength<=12)
   		return 2;
   		if(spwlength>=13&&spwlength<=16)
   		return 3;
   }
   if(chspan==3)
   {
   		if(spwlength>=6&&spwlength<=8)
   		return 2;
   		if(spwlength>=9&&spwlength<=12)
   		return 3;
   		if(spwlength>=13&&spwlength<=16)
   		return 4;
   }
}

function GEId(sID){
	return document.getElementById(sID);
}

function Disp(k){
	for(i=1;i<=4;i++)
	{
		if(i==k)
		GEId("idSMT"+i).style.display="inline";
		else
		GEId("idSMT"+i).style.display="none";
	}
}
