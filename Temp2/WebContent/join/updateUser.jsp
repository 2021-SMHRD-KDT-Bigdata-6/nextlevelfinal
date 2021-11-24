<%@page import="Model_User.*"%>
<%@page import="Model_User.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <link rel="sortcut icon" type="image/x-icon" href="../img/new/titleLogo.png">
        <title>G-CAP : ȸ������</title>
        <link rel="stylesheet" href="join.css">
        
    </head>
    <body>
    <%
	UserVO vo = (UserVO)session.getAttribute("user");
	UserDAO dao = new UserDAO();
	
	%>
        
        <!-- header -->
        <div id="header">
            <a href="../index.html" target="_blank" title="G-CAP ���� ������ �̵�">
                <!-- <img src="../img/new/NAVER.png" id="logo"> -->
                <span style="font-size: 50px;">G-CAP</span>
            </a>
        </div>

	
        <!-- wrapper -->
        <form action="../UpdateService" method="post">
        <div id="wrapper">
		
            <!-- content-->
            <div id="content">

                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">���̵�</label>
                        
                    </h3>
                    <span style="margin-left:55px;">
                        <%=vo.getId() %>
                    </span>

                    <!-- <span type="button">���̵� �ߺ�üũ</span>
                    <span class="error_next_box">8~16�� ���� �� �ҹ���, ����, Ư�����ڸ� ����ϼ���.</span> -->
                </div>

                <!-- <div>
                    <h3 class="join_title"><label for="pswd2">��й�ȣ ��Ȯ��</label></h3>
                    <span class="box int_pass_check">
                        <input type="text" id="pswd2" class="int" maxlength="20">
                        <img src="Loginimg/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div> -->

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">�̸�</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" name="name" class="int" maxlength="20" value=<%=vo.getName() %>>
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NICK NAME -->
                <div>
                    <h3 class="join_title"><label for="name">�г���</label></h3>
                    <span class="box int_name">
                        <input type="text" id="nickname" name="nick" class="int" maxlength="20" value=<%=vo.getNick() %>>
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <!-- <div>
                    <h3 class="join_title"><label for="yy">�������</label></h3>

                    <div id="bir_wrap"> -->
                        <!-- BIRTH_YY -->
                        <!-- <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" maxlength="4" placeholder="��(4��)">
                            </span>
                        </div> -->

                        <!-- BIRTH_MM -->
                        <!-- <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel">
                                    <option>��</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div> -->

                        <!-- BIRTH_DD -->
                        <!-- <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" class="int" maxlength="2" placeholder="��">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div> -->

                <!-- GENDER -->
                <!-- <div>
                    <h3 class="join_title"><label for="gender">����</label></h3>
                    <span class="box gender_code">
                        <select id="gender" class="sel">
                            <option>����</option>
                            <option value="M">����</option>
                            <option value="F">����</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">�ʼ� �����Դϴ�.</span>
                </div> -->

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">�޴���ȭ</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" name="phone" class="int" maxlength="16" placeholder="��ȭ��ȣ �Է�" value=<%=vo.getPhone()%>>
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                
                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">����Ȯ�� �̸���<span class="optional"></span></label></h3>
                    <span class="box int_email">
                        <input type="text" name="email" id="email" class="int" maxlength="100" placeholder="�����Է�" value=<%=vo.getEmail()%>>
                    </span>
                    <span class="error_next_box">�̸��� �ּҸ� �ٽ� Ȯ�����ּ���.</span>    
                </div>

                <!-- POST -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">�����ȣ/�����ȣ ã��</label></h3>
                    <span class="box int_id">
                        <input type="text" id="sample6_postcode" name="postcd" class="int" maxlength="20" value=<%=vo.getPostcd()%>>
                        <!-- <span class="step_url" type="button">���̵� �ߺ�üũ</span> -->
                        <button class="step_url" type="button" onclick="sample6_execDaumPostcode()" id="sbmitBtn">�����ȣã��</button>
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                <div>
                    <h3 class="join_title"><!--<label for="phoneNo">-->�ּ�</label></h3>
                    <span class="box int_mobile">
                        <input type="text" name="addr" id="sample6_address" class="int" maxlength="16" placeholder="�ּ�" value=<%=vo.getAddr()%>>
                    </span>    
                    <!-- <span class="error_next_box"></span>     -->
                </div>
                <div>
                    <h3 class="join_title"><!--<label for="phoneNo">-->���ּ�</label></h3>
                <span class="box int_mobile" id = "detail" id="addrress">
                    <input type="text" name="addrdtl1" id="sample6_detailAddress" class="int detail" maxlength="16" placeholder="���ּ�" value=<%=vo.getAddrdtl1()%>>
                </span>    
                <span class="box int_mobile" id= "list" id="addrress">
                    <input type="text" name="addrdtl2" id="sample6_extraAddress" class="int list" maxlength="16" placeholder="�����׸�" value=<%=vo.getAddrdtl2()%>>
                </span>      
                <!-- <span class="error_next_box"></span>     -->
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area">
                    <input type="submit" id="btnJoin" disabled="disabled" value="�����ϱ�">
                </div>

                

            </div> 
            </form>
            <!-- content-->

        </div> 
        <!-- wrapper -->
    <script src="join.css"></script>
    <script src="/pro/js/jquery-3.3.1.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" charset="UTF-8"></script>
    <script src="/pro/js/findAddress.js"></script>
    <script src="/pro/js/updateUser.js"></script>
    </body>
</html>