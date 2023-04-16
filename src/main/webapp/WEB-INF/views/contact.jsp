  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
  <body>
    <div id="wraper">
      <div class="Search">
        <div class="tag">
            <h3>Tags <input class="input_find" type="text" placeholder="" /></h3> 
        </div>
        <div class="name">
            <h3>Name <input class="input_find" type="text" placeholder="" /></h3> 
        </div>
      </div>

      <!-- create table callhistory -->
      <div class="tabel-call-history">
        <table>
          <tr id="title-table">
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Company</th>
          </tr>
          <tr>
            <td>Trần Văn Kiệt</td>
            <td>tvkiet@gmail.com</td>
            <td>0123456789</td>
            <td>HCMUTE</td>
          </tr>
          <tr>
            <td>Trần Văn Kiệt</td>
            <td>tvkiet@gmail.com</td>
            <td>0123456789</td>
            <td>HCMUTE</td>
          </tr>
          <tr>
            <td>Trần Văn Kiệt</td>
            <td>tvkiet@gmail.com</td>
            <td>0123456789</td>
            <td>HCMUTE</td>
          </tr>
          <tr>
            <td>Nguyễn Đình Thiện</td>
            <td>ndhthien@gmail.com</td>
            <td>0354261254</td>
            <td>HCMUTE</td>
          </tr>
          <tr>
            <td>Nguyễn Đình Thiện</td>
            <td>ndhthien@gmail.com</td>
            <td>0354261254</td>
            <td>HCMUTE</td>
          </tr>
          <tr>
            <td>Nguyễn Đình Thiện</td>
            <td>ndhthien@gmail.com</td>
            <td>0354261254</td>
            <td>HCMUTE</td>
          </tr>
          <tr>
            <td>Chau Sóc Thái</td>
            <td>csthai@gmail.com</td>
            <td>0365423220</td>
            <td>HCMUTE</td>
          </tr>
          <tr>
            <td>Chau Sóc Thái</td>
            <td>csthai@gmail.com</td>
            <td>0365423220</td>
            <td>HCMUTE</td>
          </tr>
          <tr>
            <td>Chau Sóc Thái</td>
            <td>csthai@gmail.com</td>
            <td>0365423220</td>
            <td>HCMUTE</td>
          </tr>
          <tr>
            <td>Chau Sóc Thái</td>
            <td>csthai@gmail.com</td>
            <td>0365423220</td>
            <td>HCMUTE</td>
          </tr>
          <tr>
            <td>Chau Sóc Thái</td>
            <td>csthai@gmail.com</td>
            <td>0365423220</td>
            <td>HCMUTE</td>
          </tr>
            <tr>
                <td>Chau Sóc Thái</td>
                <td>csthai@gmail.com</td>
                <td>0365423220</td>
                <td>HCMUTE</td>
            </tr>
            <tr>
                <td>Chau Sóc Thái</td>
                <td>csthai@gmail.com</td>
                <td>0365423220</td>
                <td>HCMUTE</td>
            </tr>
            <tr>
                <td>Chau Sóc Thái</td>
                <td>csthai@gmail.com</td>
                <td>0365423220</td>
                <td>HCMUTE</td>
            </tr>
            <tr>
                <td>Chau Sóc Thái</td>
                <td>csthai@gmail.com</td>
                <td>0365423220</td>
                <td>HCMUTE</td>
            </tr>
            <tr>
                <td>Chau Sóc Thái</td>
                <td>csthai@gmail.com</td>
                <td>0365423220</td>
                <td>HCMUTE</td>
            </tr>
        </table>
      </div>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.4.js"></script>
  <script>
    $(document).ready(function () {
      $("#main-menu li").removeClass("active");
      $("#main-menu li").click(function () {
        $("#main-menu li").removeClass("active");
        $(this).addClass("active");
        return false;
      });
    });
  </script>