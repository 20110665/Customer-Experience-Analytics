<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

  <body>
    <div id="wraper">
      <div class="Search">
        <form>
          <input id="input" class="input_find" type="text" onkeyup="tabelSearch()" placeholder="Find phone number..." />
        </form>
      </div>
      <br>
      <!-- create table callhistory -->
      <div class="tabel-call-history">
        <table>
          <tr id="title-table">
            <th>ID</th>
            <th>Date Time</th>
            <th>AgenId</th>
            <th>Phone</th>
            <th>Call Offer</th>
            <th>Call Respond</th>
            <th>Business Hours</th>
          </tr>
          <tr>
            <td><a href="/history/1">1</a></td>
            <td>1/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0123456789</td>
            <td>True</td>
            <td>False</td>
            <td>True</td>
          </tr>
          <tr>
            <td><a href="/history/1">2</a></td>
            <td>2/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0954123575</td>
            <td>False</td>
            <td>True</td>
            <td>True</td>
          </tr>
          <tr>
            <td><a href="/history/1">3</a></td>
            <td>3/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0345684214</td>
            <td>False</td>
            <td>True</td>
            <td>False</td>
          </tr>
          <tr>
            <td><a href="/history/1">4</a></td>
            <td>4/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0945624152</td>
            <td>True</td>
            <td>False</td>
            <td>False</td>
          </tr>
          </tr>
            <td><a href="/history/1">5</a></td>
            <td>1/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0123456789</td>
            <td>True</td>
            <td>False</td>
            <td>True</td>
          </tr>
          <tr>
            <td><a href="/history/1">6</a></td>
            <td>2/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0954123575</td>
            <td>False</td>
            <td>True</td>
            <td>True</td>
          </tr>
          <tr>
            <td><a href="/history/1">7</a></td>
            <td>3/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0345684214</td>
            <td>False</td>
            <td>True</td>
            <td>False</td>
          </tr>
          <tr>
            <td><a href="/history/1">8</a></td>
            <td>4/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0945624152</td>
            <td>True</td>
            <td>False</td>
            <td>False</td>
          </tr>
            <td><a href="/history/1">9</a></td>
            <td>1/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0123456789</td>
            <td>True</td>
            <td>False</td>
            <td>True</td>
          </tr>
          <tr>
            <td><a href="/history/1">10</a></td>
            <td>2/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0954123575</td>
            <td>False</td>
            <td>True</td>
            <td>True</td>
          </tr>
        </table>
      </div>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.4.js"></script>

  

