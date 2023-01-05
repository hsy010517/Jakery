var index = {
   init: function() {
      $("#registerbtn-save").on("click", () => {
         this.save();
      });
      $("#registerbtn-update").on("click", () => {
         this.update();
      });
      $("#registerbtn-idCheck").on("click", () => {
         this.idcheck();
      });
      		$("#btn-delete").on("click", () => {
			this.delete();
		});
      $("#btn-update").on("click", () => {
         this.update();
      });
      $("#delete").on("click", () => {
         this.AdminDelete();
      });
      $("#AdminDeletecheckbox").on("click", () => {
         this.AdminDeletecheckbox();
      });
      $("#update").on("click", () => {
         this.AdminUpdate();
      });
   },
   save: function() {
      let data = {
         userid: $("#userid").val(),
         username: $("#username").val(),
         password: $("#password").val(),
         passwordcheck: $("#passwordcheck").val(),
         email: $("#email").val(),
         address: $("#address").val(),
         postnum: $("#postnum").val(),
         subaddress: $("#subaddress").val(),
         idck: $("#idck2").val()
      };

      var re = /^[a-zA-Z0-9]{4,12}$/;

      var re2 = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;


      if (data.userid == "") {
         Swal.fire({
            icon: 'warning',
            title: '아이디를 입력해 주세요.'
         });
         userid.focus();
         return false;
      } else if (re.test(data.userid) == false) {
         Swal.fire({
            icon: 'warning',
            title: "아이디는 영문 또는 숫자를 사용한 4 ~ 12자 사이로 입력해주세요."
         });
         userid.focus();
         return false;
      } else if (data.idck == 0) {
         Swal.fire({
            icon: 'warning',
            title: '아이디 중복체크를 해 주세요.'
         });
         password.focus();
         return false;
      } else if (data.username == "") {
         Swal.fire({
            icon: 'warning',
            title: '이름을 입력해 주세요.'
         });
         username.focus();
         return false;
      } else if (data.username.length < 4) {
         Swal.fire({
            icon: 'warning',
            title: '이름은 4글자 이상 입력해 주세요.'
         });
         username.focus();
         return false;
      } else if (data.password == "") {
         Swal.fire({
            icon: 'warning',
            title: '비밀번호를 입력해 주세요.'
         });
         password.focus();
         return false;
      } else if (re.test(data.password) == false) {
         Swal.fire({
            icon: 'warning',
            title: "비밀번호는 영문 또는 숫자를 사용한 4 ~ 12자 사이로 입력해주세요."
         });
         password.focus();
         return false;
      } else if (data.passwordcheck == "") {
         Swal.fire({
            icon: 'warning',
            title: '비밀번호를 재입력해 주세요.'
         });
         passwordcheck.focus();
         return false;
      } else if (data.passwordcheck != data.password) {
         Swal.fire({
            icon: 'warning',
            title: '비밀번호가 같지 않습니다!'
         });
         passwordcheck.focus();
         return false;
      } else if (data.email == "") {
         Swal.fire({
            icon: 'warning',
            title: '이메일을 입력해 주세요.'
         });
         email.focus();
         return false;
      } else if (re2.test(data.email) == false) {
         Swal.fire({
            icon: 'warning',
            title: "이메일 형식에 알맞게 입력해 주세요."
         });
         password.focus();
         return false;
      } else if (data.postnum == "") {
         Swal.fire({
            icon: 'warning',
            title: '우편번호를 입력해 주세요.'
         });
         postnum.focus();
         return false;
      } else if (data.address == "") {
         Swal.fire({
            icon: 'warning',
            title: '주소를 입력해 주세요.'
         });
         address.focus();
         return false;
      }


      else {
         $.ajax({
            type: "POST",
            url: "/auth/joinProc",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
         }).done(function(data) {
            Swal.fire({
               title: '회원가입에 성공했습니다!',
               text: "바로 로그인 하시겠습니까?",
               icon: 'success',
               showCancelButton: true,
               confirmButtonColor: '#3085d6',
               confirmButtonText: '로그인 페이지로 가기.',
               cancelButtonText: '메인화면으로 돌아가기.'

            }).then((result) => {
               if (result.isConfirmed) {
                  location.href = "/auth/loginForm";
               } else {
                  location.href = "/";
               }
            })
         }).fail(function(error) {
            alert(JSON.stringify(error));
         });
      }
   },
   update: function() {
      let data = {
         userid: $("#userid").val(),
         username: $("#username").val(),
         password: $("#password").val(),
         passwordcheck: $("#password_chk").val(),
         email: $("#email").val(),
         address: $("#address").val(),
         postnum: $("#postnum").val(),
         subaddress: $("#subaddress").val()
      };

      var re = /^[a-zA-Z0-9]{4,12}$/;

      var re2 = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

      if (data.password == "") {
         Swal.fire({
            icon: 'warning',
            title: '비밀번호를 입력해 주세요!'
         });
         password.focus();
         return false;
      } else if (re.test(data.password) == false) {
         Swal.fire({
            icon: 'warning',
            title: "비밀번호는 영문 또는 숫자를 사용한 4 ~ 12자 사이로 입력해주세요."
         });
         password.focus();
         return false;
      } else if (data.passwordcheck != data.password) {
         Swal.fire({
            icon: 'warning',
            title: '비밀번호가 같지 않습니다!'
         });
         return false;
      } else if (data.email == "") {
         Swal.fire({
            icon: 'warning',
            title: '이메일을 입력해 주세요.'
         });
         email.focus();
         return false;
      } else if (re2.test(data.email) == false) {
         Swal.fire({
            icon: 'warning',
            title: "이메일 형식에 알맞게 입력해 주세요."
         });
         password.focus();
         return false;
      } else if (data.postnum == "") {
         Swal.fire({
            icon: 'warning',
            title: '우편번호를 입력해 주세요.'
         });
         postnum.focus();
         return false;
      } else if (data.address == "") {
         Swal.fire({
            icon: 'warning',
            title: '주소를 입력해 주세요.'
         });
         address.focus();
         return false;
      } else {
         $.ajax({
            type: "PUT",
            url: "/user",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
         }).done(function(data) {

            alert("회원정보가 수정되었습니다! 다시 로그인해 주세요");
            location.href = "/logout";

         }).fail(function(error) {
            alert(JSON.stringify(error));
         });
      }


   },

   delete: function() {
      let data = {
         userid: $("#userid").val(),
         username: $("#username").val(),
         password: $("#password").val(),
         email: $("#email").val(),
         address: $("#address").val(),
         postnum: $("#postnum").val(),
         subaddress: $("#subaddress").val()
      };

      Swal.fire({
         title: '정말 탈퇴하시겠습니까?',
         text: "탈퇴시 보유한 마일리지가 전부 삭제됩니다.",
         icon: 'warning',
         showCancelButton: true,
         confirmButtonColor: '#3085d6',
         confirmButtonText: '돌아가기.',
         cancelButtonText: '탈퇴하기.'

      }).then((result) => {
         if (result.isConfirmed) {
            location.href = "/auth/updateForm";
         } else {
            $.ajax({
               type: "POST",
               url: "/delete",
               data: JSON.stringify(data),
               contentType: "application/json; charset=utf-8",
               dataType: "json"
            }).done(function(data) {
               alert("회원 탈퇴가 완료되었습니다. 다음에 다시 만나요!")
               location.href = "/logout";
            }).fail(function(error) {
               alert(JSON.stringify(error));
            });
         }
      })
   },

   AdminDeletecheckbox: function() {

      var userid = new Array();



      $('input:checkbox[name=adminpage-memberList-user]:checked').each(function() {
         userid.push(this.value);
      });


      Swal.fire({
         title: '이 계정들을 삭제하시겠습니까?',
         icon: 'warning',
         showCancelButton: true,
         confirmButtonColor: '#3085d6',
         confirmButtonText: '돌아가기',
         cancelButtonText: '삭제하기'

      }).then((result) => {
         if (result.isConfirmed) {

         } else {
            for (var i in userid) {
               let data = {
                  userid: userid[i],
               };
               $.ajax({
                  type: "POST",
                  url: "/delete",
                  data: JSON.stringify(data),
                  contentType: "application/json; charset=utf-8",
                  dataType: "json"
               }).done(function(data) {
               }).fail(function(error) {
                  alert(JSON.stringify(error));
               });
            }
            location.href = "/adminpage";
         }
      })

   },
   AdminDelete: function() {
      let data = {
         userid: $("#delete").val(),
      };

      console.log(data.userid);

      Swal.fire({
         title: '이 계정을 삭제하시겠습니까?',
         icon: 'warning',
         showCancelButton: true,
         confirmButtonColor: '#3085d6',
         confirmButtonText: '돌아가기',
         cancelButtonText: '삭제하기'

      }).then((result) => {
         if (result.isConfirmed) {

         } else {
            $.ajax({
               type: "POST",
               url: "/delete",
               data: JSON.stringify(data),
               contentType: "application/json; charset=utf-8",
               dataType: "json"
            }).done(function(data) {
               alert("회원 삭제를 완료했습니다");
               location.reload();
            }).fail(function(error) {
               alert(JSON.stringify(error));
            });
         }
      })
   },
   AdminUpdate: function() {

      userid = $("#userid").val();
      username = $("#username").val();
      console.log(userid);
      
      alert(userid + "님의 회원 수정을 시작합니다.");
      let openWin = window.open("/adminUpdateForm", "Child", "width=400, height=300, top=50, left=50");
      openWin.document.getElementById("userid").value = document.userid;

   },


   idcheck: function() {
      let data = {
         userid: $("#userid").val()
      };


      var re = /^[a-zA-Z0-9]{4,12}$/;


      if (re.test(data.userid) == false) {
         Swal.fire({
            icon: 'warning',
            title: "아이디는 영문 또는 숫자를 사용한 4 ~ 12자 사이로 입력해주세요."
         });
         userid.focus();
         return false;

      } else {
         $.ajax({
            type: "POST",
            url: "/auth/idcheck",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "JSON"

         }).done(function(data) {

            if (data.data > 0) {

               Swal.fire({
                  icon: 'warning',
                  title: '이미 존재하는 아이디입니다.',
                  text: "다른 아이디를 입력해 주세요.",
               });

            } else {

               Swal.fire({
                  title: '사용 가능한 아이디입니다!',
                  text: '이 아이디를 사용하시겠습니까?',
                  icon: 'success',
                  showCancelButton: true,
                  confirmButtonColor: '#3085d6',
                  cancelButtonColor: '#d33',
                  confirmButtonText: '사용하기',
                  cancelButtonText: '재입력하기',
                  reverseButtons: true,

               }).then(result => {
                  if (result.isConfirmed) {
                     Swal.fire('완료되었습니다!');
                     var enc = 1;
                     $("input[name=enc]").attr("value", enc);
                     $("#userid").prop('readonly', true);
                     $("#userid").css("color", "blue");
                     $("#registerbtn-idCheck").prop('disabled', true);
                  } else {
                     return false;
                  }
               });
            }

         }).error(function(request, status, error) {
            console.log(request);
         });
      }
   }



}
index.init();