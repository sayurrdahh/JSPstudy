<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
.gradient-custom {
  /* fallback for old browsers */
  background: #f093fb;

  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1));

  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1))
}

.card-registration .select-input.form-control[readonly]:not([disabled]) {
  font-size: 1rem;
  line-height: 2.15;
  padding-left: .75em;
  padding-right: .75em;
}
.card-registration .select-arrow {
  top: 13px;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<body>
	
<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Registration Form</h3>
			<form action="MemberJoinProc.jsp" method="post">
              <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" name="id" id="id" class="form-control form-control-lg" />
                    <label class="form-label" for="id">Id</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="password" name="pass1" id="pass1" class="form-control form-control-lg" />
                    <label class="form-label" for="pass1">password</label>
                  </div>

                </div>
              </div>

              <div class="row">
                 <div class="col-md-6 mb-4">

                  <h6 class="mb-2 pb-1">Age</h6>

                  <div class="form-check form-check-inline">
                    <input
                      class="form-check-input"
                      type="radio"
                      id="age"
                      name="age"
                      value="option1"
                      checked
                    />
                    <label class="form-check-label" for="10">10's</label>
                  </div>

                  <div class="form-check form-check-inline">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="age"
                      id="maleGender"
                      value="option2"
                    />
                    <label class="form-check-label" for="20">20's</label>
                  </div>

                  <div class="form-check form-check-inline">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="age"
                      id="otherGender"
                      value="option3"
                    />
                    <label class="form-check-label" for="30">30's</label>
                  </div>

                </div>
                
                      <div class="col-md-6 mb-4 d-flex align-items-center">

                  <div class="form-outline datepicker w-100">
                    <input
                      type="text"
                      name="hobby"
                      class="form-control form-control-lg"
                      id="pass2"
                    />
                    <label for="hobby" class="form-label">hobby</label>
                  </div>

                </div>
                
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="email" id="emailAddress" name="email" class="form-control form-control-lg" />
                    <label class="form-label" for="emailAddress">Email</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="tel" id="phoneNumber" name="tel" class="form-control form-control-lg" />
                    <label class="form-label" for="phoneNumber">Phone Number</label>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-12">

                  <select name="job" class="select form-control-lg">
                    <option value="none">None</option>
                    <option value="designer">Designer</option>
                    <option value="developer">Developer</option>
                    <option value="productManager">ProductManager</option>
                  </select>
                  <label class="form-label select-label">Job</label>

                </div>
              </div>

              <div class="mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="reset" value="reset" />
                <input class="btn btn-primary btn-lg" type="submit" value="Submit" />
              </div>
	
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
	
</body>
</html>