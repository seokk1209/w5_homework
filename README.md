# 구현 목표
  본 과제의 목표는 멋쟁이 사자처럼 정규 수업시간에 CRUD 개념과 함께 view_helper, form_helper, RESTful, strong_parmeter, before_action 을 모두 사용해여 게시판을 구현하고 간단한 부트스트랩을 적용해 보는것이다.
  
# 오류 내용 + 오류 해결과정(코드첨부)
1. 각각의 포스팅을 인덱스화면에서 출혁하는 것을 @posts.each do 를 사용하다보니 새로운 게시물을 등록하면 오른쪽으로 게속 자라나고,, 일정 수준에서 다음줄에 생성되지를 않았는데.. 이를 수정하기 위해서는 each do 가 아닌 for 문을 돌리면서 3 의 배수이면 다음줄에서 카드생성을 시작해야할 것 같은데.... 시도해보았으나 실패함..

         <div class="card-deck">
                <% @posts.each do |p|%>
                  <div class="card border-dark mb-3" style="max-width: 18rem;">
                    <div class="card-header"><%= p.title%></div>
                    <div class="card-body text-dark">
                      <h5 class="card-title"><%= p.title%></h5>
                      <p class="card-text"><%= p.content%></p>
                      <a href='/posts/<%=p.id%>'><button type="button" class="btn btn-secondary">보기</button></a>
                      <a href='/posts/<%=p.id%>/edit'><button type="button" class="btn btn-secondary">수정</button></a>
                      <a href='/posts/<%=p.id%>' data-method='delete'><button type="button" class="btn btn-secondary">삭제</button></a>
                    </div>
                  </div>
                <%end%>
              </div>


2. 새로운 포스트를 생성하는 화면에서 원래는 다른 부트스트랩을 적용하였는데 이것이 form 문으로 작성되어 있었고 현재 과제에서는 form_for 를 사용했기 때문에 적용이 안됨.. 그래서 그냥 표 안에 넣어버림(깔끔해 보이게)

          <%= form_for(@post) do |f| %>
                <div class="card text-center">
                  <div class="card-header">
                    <h5 class="card-title">제목을 입력해주세요</h5>
                    <%= f.text_field :title %>
                  </div>
                  <div class="card-body">
                    <h5 class="card-title">내용을 입력해주세요</h5>
                    <p class="card-text"><%= f.text_area :content %></p>
                    <%= f.submit '제출' %>
                  </div>
                </div>
                <% end %>

                <!--<%= form_for(@post) do |f| %>-->
                <!--    <%= f.text_field :title %>-->
                <!--    <%= f.text_area :content %>-->
                <!--    <%= f.submit '제출' %>    -->
                <!--<% end %>-->

# 느낀점 
 전체 내용을 한번 다시 정리해야 할 것 같다.... 
 맨붕에 빠졌다 너무 슬프다..
 
 처음 css 활용해서 만들었던 자기소개 페이지와는 다르게 사용자가 직접 데이터(게시물)을 등록하고 활용할수 있게 되었다는점이 재밌었다.
 
 조금더 공부하면 정말 상용 가능한 프로젝트도 할 수 있을것같은 생각이 든다..


# 참고문서 링크
- http://konkuk.likelion.org
- https://getbootstrap.com/docs/4.1/components/card/