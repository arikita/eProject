<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:if test="${langue == 'vi'}">
    <fmt:setLocale value="vi_VN"/>
</c:if>
<c:if test="${langue == 'en'}">
    <fmt:setLocale value="en_US"/>
</c:if>
<fmt:setBundle basename="lang.create" var="lang"/>
<!--Start sidebar-wrapper-->
   <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
     <div class="brand-logo">
      <a href="index.html">
       <img src="${links}/images/logo.png" class="logo-icon" alt="logo icon">
       <h5 class="logo-text">Dashtreme Admin</h5>
     </a>
   </div>
   <div class="user-details">
    <div class="media align-items-center user-pointer collapsed" data-toggle="collapse" data-target="#user-dropdown">
      <div class="avatar"><img class="mr-3 side-user-img" src="${links}/images/adminimage.jpg" alt="user avatar"></div>
       <div class="media-body">
       <h6 class="side-user-name">Mark Johnson</h6>
      </div>
       </div>
     <div id="user-dropdown" class="collapse">
      <ul class="user-setting-menu">
            <li><a href="javaScript:void();"><i class="icon-user"></i>  My Profile</a></li>
            <li><a href="javaScript:void();"><i class="icon-settings"></i> Setting</a></li>
      <li><a href="javaScript:void();"><i class="icon-power"></i> Logout</a></li>
      </ul>
     </div>
      </div>
   <ul class="sidebar-menu">
      <li class="sidebar-header">MAIN NAVIGATION</li>
      <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-view-dashboard"></i> <span>Dashboard</span><i class="fa fa-angle-left pull-right"></i>
        </a>
		<ul class="sidebar-submenu">
		  <li><a href="index.html"><i class="zmdi zmdi-dot-circle-alt"></i> eCommerce</a></li>
		  <li><a href="dashboard-human-resources.html"><i class="zmdi zmdi-dot-circle-alt"></i> Human Resources</a></li>
		  <li><a href="dashboard-digital-marketing.html"><i class="zmdi zmdi-dot-circle-alt"></i> Digital Marketing</a></li>
          <li><a href="dashboard-property-listing.html"><i class="zmdi zmdi-dot-circle-alt"></i> Property Listings</a></li>
		  <li><a href="dashboard-service-support.html"><i class="zmdi zmdi-dot-circle-alt"></i> Services & Support</a></li>
		  <li><a href="dashboard-logistics.html"><i class="zmdi zmdi-dot-circle-alt"></i> Logistics</a></li>
		</ul>
      </li>
      <li <c:if test="${homepage=='sendemail'}">class="active "</c:if>>
                <a href="${links}/file/email/emailadmin/">
                    <i class="now-ui-icons design_app"></i>
                    <p>SendEmail</p>
                </a>
            </li>
            <li <c:if test="${homepage=='admin'}">class="active "</c:if>>
                <a href="${links}/file/admin/viewall/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Admin</p>
                </a>
            </li>
            <li <c:if test="${homepage=='product'}">class="active "</c:if>>
                <a href="${links}/file/product/viewall/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Product</p>
                </a>
            </li>
            <li <c:if test="${homepage=='customer'}">class="active "</c:if>>
                <a href="${links}/file/customer/viewall/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Customer</p>
                </a>
            </li>
            <li <c:if test="${homepage=='color'}">class="active "</c:if>>
                <a href="${links}/file/color/viewall/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Color</p>
                </a>
            </li>
            <li <c:if test="${homepage=='size'}">class="active "</c:if>>
                <a href="${links}/file/size/viewall/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Size</p>
                </a>
            </li>
            <li <c:if test="${homepage=='voucher'}">class="active "</c:if>>
                <a href="${links}/file/voucher/viewall/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Voucher</p>
                </a>
            </li>
            <li <c:if test="${homepage=='membership'}">class="active "</c:if>>
                <a href="${links}/file/membership/viewall/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Membership</p>
                </a>
            </li>
            <li <c:if test="${homepage=='salary'}">class="active "</c:if>>
                <a href="${links}/file/salary/viewall/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Salary</p>
                </a>
            </li>
            <li <c:if test="${homepage=='book'}">class="active "</c:if>>
                <a href="${links}/file/book/viewall/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Booktest</p>
                </a>
            </li>
            <li <c:if test="${homepage=='fulldata'}">class="active "</c:if>>
                <a href="${links}/file/fulldata/viewall/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Fulldata</p>
                </a>
            </li >
            <li <c:if test="${homepage=='hello'}">class="active "</c:if>>
                <a href="${links}/file/home/hello/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Hello</p>
                </a>
            </li >
      <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-layers"></i>
          <span>UI Elements</span> <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="sidebar-submenu">
    <li><a href="ui-typography.html"><i class="zmdi zmdi-dot-circle-alt"></i> Typography</a></li>
        <li><a href="ui-cards.html"><i class="zmdi zmdi-dot-circle-alt"></i> Cards</a></li>
    <li><a href="ui-buttons.html"><i class="zmdi zmdi-dot-circle-alt"></i> Buttons</a></li>
        <li><a href="ui-nav-tabs.html"><i class="zmdi zmdi-dot-circle-alt"></i> Nav Tabs</a></li>
        <li><a href="ui-accordions.html"><i class="zmdi zmdi-dot-circle-alt"></i> Accordions</a></li>
        <li><a href="ui-modals.html"><i class="zmdi zmdi-dot-circle-alt"></i> Modals</a></li>
        <li><a href="ui-list-groups.html"><i class="zmdi zmdi-dot-circle-alt"></i> List Groups</a></li>
        <li><a href="ui-bootstrap-elements.html"><i class="zmdi zmdi-dot-circle-alt"></i> BS Elements</a></li>
        <li><a href="ui-pagination.html"><i class="zmdi zmdi-dot-circle-alt"></i> Pagination</a></li>
        <li><a href="ui-alerts.html"><i class="zmdi zmdi-dot-circle-alt"></i> Alerts</a></li>
        <li><a href="ui-progressbars.html"><i class="zmdi zmdi-dot-circle-alt"></i> Progress Bars</a></li>
    <li><a href="ui-checkbox-radio.html"><i class="zmdi zmdi-dot-circle-alt"></i> Checkboxes & Radios</a></li>
        <li><a href="ui-notification.html"><i class="zmdi zmdi-dot-circle-alt"></i> Notifications</a></li>
        <li><a href="ui-sweet-alert.html"><i class="zmdi zmdi-dot-circle-alt"></i> Sweet Alerts</a></li>
        </ul>
      </li>
      <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-card-travel"></i>
          <span>Components</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li><a href="components-range-slider.html"><i class="zmdi zmdi-dot-circle-alt"></i> Range Sliders</a></li>
          <li><a href="components-image-carousel.html"><i class="zmdi zmdi-dot-circle-alt"></i> Image Carousels</a></li>
          <li><a href="components-grid-layouts.html"><i class="zmdi zmdi-dot-circle-alt"></i> Grid Layouts</a></li>
          <li><a href="components-switcher-buttons.html"><i class="zmdi zmdi-dot-circle-alt"></i> Switcher Buttons</a></li>
          <li><a href="components-pricing-table.html"><i class="zmdi zmdi-dot-circle-alt"></i> Pricing Tables</a></li>
          <li><a href="components-vertical-timeline.html"><i class="zmdi zmdi-dot-circle-alt"></i> Vertical Timeline</a></li>
          <li><a href="components-horizontal-timeline.html"><i class="zmdi zmdi-dot-circle-alt"></i> Horizontal Timeline</a></li>
          <li><a href="components-fancy-lightbox.html"><i class="zmdi zmdi-dot-circle-alt"></i> Fancy Lightbox</a></li>
          <li><a href="components-color-palette.html"><i class="zmdi zmdi-dot-circle-alt"></i> Color Palette</a></li>
        </ul>
      </li>
      <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-chart"></i> <span>Charts</span>
          <i class="fa fa-angle-left float-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li><a href="charts-chartjs.html"><i class="zmdi zmdi-dot-circle-alt"></i> Chart JS</a></li>
          <li><a href="charts-apex.html"><i class="zmdi zmdi-dot-circle-alt"></i> Apex Charts</a></li>
          <li><a href="charts-sparkline.html"><i class="zmdi zmdi-dot-circle-alt"></i> Sparkline Charts</a></li>
          <li><a href="charts-peity.html"><i class="zmdi zmdi-dot-circle-alt"></i> Peity Charts</a></li>
          <li><a href="charts-other.html"><i class="zmdi zmdi-dot-circle-alt"></i> Other Charts</a></li>
        </ul>
       </li>
	   <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-widgets"></i> <span>Widgets</span>
          <i class="fa fa-angle-left float-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li><a href="widgets-static.html"><i class="zmdi zmdi-dot-circle-alt"></i> Static Widgets</a></li>
          <li><a href="widgets-data.html"><i class="zmdi zmdi-dot-circle-alt"></i> Data Widgets</a></li>
        </ul>
       </li>
    
      <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-email"></i>
          <span>Mailbox</span>
           <small class="badge float-right badge-warning">12</small>
        </a>
        <ul class="sidebar-submenu">
          <li><a href="mail-inbox.html"><i class="zmdi zmdi-dot-circle-alt"></i> Inbox</a></li>
          <li><a href="mail-compose.html"><i class="zmdi zmdi-dot-circle-alt"></i> Compose</a></li>
          <li><a href="mail-read.html"><i class="zmdi zmdi-dot-circle-alt"></i> Read Mail</a></li>
        </ul>
      </li>
      
      <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-format-list-bulleted"></i> <span>Forms</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li><a href="form-inputs.html"><i class="zmdi zmdi-dot-circle-alt"></i> Basic Inputs</a></li>
          <li><a href="form-input-group.html"><i class="zmdi zmdi-dot-circle-alt"></i> Input Groups</a></li>
          <li><a href="form-layouts.html"><i class="zmdi zmdi-dot-circle-alt"></i> Form Layouts</a></li>
          <li><a href="form-advanced.html"><i class="zmdi zmdi-dot-circle-alt"></i> Form Advanced</a></li>
          <li><a href="form-uploads.html"><i class="zmdi zmdi-dot-circle-alt"></i> Form Uploads</a></li>
          <li><a href="form-validation.html"><i class="zmdi zmdi-dot-circle-alt"></i> Form Validation</a></li>
          <li><a href="form-step-wizard.html"><i class="zmdi zmdi-dot-circle-alt"></i> Form Wizard</a></li>
          <li><a href="form-text-editor.html"><i class="zmdi zmdi-dot-circle-alt"></i> Form Editor</a></li>
        </ul>
      </li>

      <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-lock"></i> <span>Authentication</span>
          <i class="fa fa-angle-left float-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li><a href="authentication-signin.html" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i> SignIn 1</a></li>
          <li><a href="authentication-signup.html" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i> SignUp 1</a></li>
          <li><a href="authentication-signin2.html" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i> SignIn 2</a></li>
          <li><a href="authentication-signup2.html" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i> SignUp 2</a></li>
          <li><a href="authentication-lock-screen.html" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i> Lock Screen</a></li>
          <li><a href="authentication-reset-password.html" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i> Reset Password 1</a></li>
          <li><a href="authentication-reset-password2.html" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i> Reset Password 2</a></li>
        </ul>
       </li>
       <li>
        <a href="calendar.html" class="waves-effect">
          <i class="zmdi zmdi-calendar-check"></i> <span>Calendar</span>
          <small class="badge float-right badge-light">New</small>
        </a>
      </li>
       <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-invert-colors"></i> <span>UI Icons</span>
          <i class="fa fa-angle-left float-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li><a href="icons-font-awesome.html"><i class="zmdi zmdi-dot-circle-alt"></i> Font Awesome</a></li>
          <li><a href="icons-material-designs.html"><i class="zmdi zmdi-dot-circle-alt"></i> Material Design</a></li>
          <li><a href="icons-themify.html"><i class="zmdi zmdi-dot-circle-alt"></i> Themify Icons</a></li>
          <li><a href="icons-simple-line-icons.html"><i class="zmdi zmdi-dot-circle-alt"></i> Line Icons</a></li>
          <li><a href="icons-flags.html"><i class="zmdi zmdi-dot-circle-alt"></i> Flag Icons</a></li>
        </ul>
      </li>
     
     <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-grid"></i> <span>Tables</span>
          <i class="fa fa-angle-left float-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li><a href="table-simple-tables.html"><i class="zmdi zmdi-dot-circle-alt"></i> Simple Tables</a></li>
          <li><a href="table-data-tables.html"><i class="zmdi zmdi-dot-circle-alt"></i> Data Tables</a></li>
        </ul>
       </li>
     
     <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-map"></i> <span>Maps</span>
          <i class="fa fa-angle-left float-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li><a href="maps-google.html"><i class="zmdi zmdi-dot-circle-alt"></i> Google Maps</a></li>
          <li><a href="maps-vector.html"><i class="zmdi zmdi-dot-circle-alt"></i> Vector Maps</a></li>
        </ul>
       </li>
     
      <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="zmdi zmdi-collection-folder-image"></i> <span>Sample Pages</span>
          <i class="fa fa-angle-left float-right"></i>
        </a>
        <ul class="sidebar-submenu">
              <li><a href="pages-invoice.html"><i class="zmdi zmdi-dot-circle-alt"></i> Invoice</a></li>
          <li><a href="pages-user-profile.html"><i class="zmdi zmdi-dot-circle-alt"></i> User Profile</a></li>
          <li><a href="pages-blank-page.html"><i class="zmdi zmdi-dot-circle-alt"></i> Blank Page</a></li>
              <li><a href="pages-coming-soon.html"><i class="zmdi zmdi-dot-circle-alt"></i> Coming Soon</a></li>
          <li><a href="pages-403.html"><i class="zmdi zmdi-dot-circle-alt"></i> 403 Error</a></li>
          <li><a href="pages-404.html"><i class="zmdi zmdi-dot-circle-alt"></i> 404 Error</a></li>
          <li><a href="pages-500.html"><i class="zmdi zmdi-dot-circle-alt"></i> 500 Error</a></li>
        </ul>
       </li>

      <li>
        <a href="javaScript:void();" class="waves-effect">
          <i class="fa fa-share"></i> <span>Multilevel</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li><a href="javaScript:void();"><i class="zmdi zmdi-dot-circle-alt"></i> Level One</a></li>
          <li>
            <a href="javaScript:void();"><i class="zmdi zmdi-dot-circle-alt"></i> Level One <i class="fa fa-angle-left pull-right"></i></a>
            <ul class="sidebar-submenu">
              <li><a href="javaScript:void();"><i class="zmdi zmdi-dot-circle-alt"></i> Level Two</a></li>
              <li>
                <a href="javaScript:void();"><i class="zmdi zmdi-dot-circle-alt"></i> Level Two <i class="fa fa-angle-left pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="javaScript:void();"><i class="zmdi zmdi-dot-circle-alt"></i> Level Three</a></li>
                  <li><a href="javaScript:void();"><i class="zmdi zmdi-dot-circle-alt"></i> Level Three</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="javaScript:void();" class="waves-effect"><i class="zmdi zmdi-dot-circle-alt"></i> Level One</a></li>
        </ul>
      </li>
      <li class="sidebar-header">LABELS</li>
      <li><a href="javaScript:void();" class="waves-effect"><i class="zmdi zmdi-coffee text-danger"></i> <span>Important</span></a></li>
      <li><a href="javaScript:void();" class="waves-effect"><i class="zmdi zmdi-chart-donut text-success"></i> <span>Warning</span></a></li>
      <li><a href="javaScript:void();" class="waves-effect"><i class="zmdi zmdi-share text-info"></i> <span>Information</span></a></li>
    </ul>
   
   </div>
   <!--End sidebar-wrapper-->
   <!--Start topbar header-->
<header class="topbar-nav">
 <nav class="navbar navbar-expand fixed-top">
  <ul class="navbar-nav mr-auto align-items-center">
    <li class="nav-item">
      <a class="nav-link toggle-menu" href="javascript:void();">
       <i class="icon-menu menu-icon"></i>
     </a>
    </li>
    <li class="nav-item">
      <form class="search-bar">
        <input type="text" class="form-control" placeholder="Enter keywords">
         <a href="javascript:void();"><i class="icon-magnifier"></i></a>
      </form>
    </li>
  </ul>
     
  <ul class="navbar-nav align-items-center right-nav-link">
    <li class="nav-item dropdown-lg">
      <a class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect" data-toggle="dropdown" href="javascript:void();">
      <i class="fa fa-envelope-open-o"></i><span class="badge badge-light badge-up">12</span></a>
      <div class="dropdown-menu dropdown-menu-right">
        <ul class="list-group list-group-flush">
         <li class="list-group-item d-flex justify-content-between align-items-center">
          You have 12 new messages
          <span class="badge badge-light">12</span>
          </li>
          <li class="list-group-item">
          <a href="javaScript:void();">
           <div class="media">
             <div class="avatar"><img class="align-self-start mr-3" src="https://via.placeholder.com/110x110" alt="user avatar"></div>
            <div class="media-body">
            <h6 class="mt-0 msg-title">Jhon Deo</h6>
            <p class="msg-info">Lorem ipsum dolor sit amet...</p>
            <small>Today, 4:10 PM</small>
            </div>
          </div>
          </a>
          </li>
          <li class="list-group-item">
          <a href="javaScript:void();">
           <div class="media">
             <div class="avatar"><img class="align-self-start mr-3" src="https://via.placeholder.com/110x110" alt="user avatar"></div>
            <div class="media-body">
            <h6 class="mt-0 msg-title">Sara Jen</h6>
            <p class="msg-info">Lorem ipsum dolor sit amet...</p>
            <small>Yesterday, 8:30 AM</small>
            </div>
          </div>
          </a>
          </li>
          <li class="list-group-item">
          <a href="javaScript:void();">
           <div class="media">
             <div class="avatar"><img class="align-self-start mr-3" src="https://via.placeholder.com/110x110" alt="user avatar"></div>
            <div class="media-body">
            <h6 class="mt-0 msg-title">Dannish Josh</h6>
            <p class="msg-info">Lorem ipsum dolor sit amet...</p>
             <small>5/11/2018, 2:50 PM</small>
            </div>
          </div>
          </a>
          </li>
          <li class="list-group-item">
          <a href="javaScript:void();">
           <div class="media">
             <div class="avatar"><img class="align-self-start mr-3" src="https://via.placeholder.com/110x110" alt="user avatar"></div>
            <div class="media-body">
            <h6 class="mt-0 msg-title">Katrina Mccoy</h6>
            <p class="msg-info">Lorem ipsum dolor sit amet.</p>
            <small>1/11/2018, 2:50 PM</small>
            </div>
          </div>
          </a>
          </li>
          <li class="list-group-item text-center"><a href="javaScript:void();">See All Messages</a></li>
        </ul>
        </div>
    </li>
    <li class="nav-item dropdown-lg">
      <a class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect" data-toggle="dropdown" href="javascript:void();">
    <i class="fa fa-bell-o"></i><span class="badge badge-info badge-up">14</span></a>
      <div class="dropdown-menu dropdown-menu-right">
        <ul class="list-group list-group-flush">
          <li class="list-group-item d-flex justify-content-between align-items-center">
          You have 14 Notifications
          <span class="badge badge-info">14</span>
          </li>
          <li class="list-group-item">
          <a href="javaScript:void();">
           <div class="media">
             <i class="zmdi zmdi-accounts fa-2x mr-3 text-info"></i>
            <div class="media-body">
            <h6 class="mt-0 msg-title">New Registered Users</h6>
            <p class="msg-info">Lorem ipsum dolor sit amet...</p>
            </div>
          </div>
          </a>
          </li>
          <li class="list-group-item">
          <a href="javaScript:void();">
           <div class="media">
             <i class="zmdi zmdi-coffee fa-2x mr-3 text-warning"></i>
            <div class="media-body">
            <h6 class="mt-0 msg-title">New Received Orders</h6>
            <p class="msg-info">Lorem ipsum dolor sit amet...</p>
            </div>
          </div>
          </a>
          </li>
          <li class="list-group-item">
          <a href="javaScript:void();">
           <div class="media">
             <i class="zmdi zmdi-notifications-active fa-2x mr-3 text-danger"></i>
            <div class="media-body">
            <h6 class="mt-0 msg-title">New Updates</h6>
            <p class="msg-info">Lorem ipsum dolor sit amet...</p>
            </div>
          </div>
          </a>
          </li>
          <li class="list-group-item text-center"><a href="javaScript:void();">See All Notifications</a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item language ">
      <a class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect" data-toggle="dropdown" href="javascript:void();"><i class="fa fa-flag"></i></a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">                        
                        <label class="dropdown-item"  for="en"><i class="flag-icon flag-icon-gb mr-2"></i> English</label>                            
                        <label class="dropdown-item" for="vi"><i class="flag-icon flag-icon-vn"></i> Việt Nam</label>
                    </div>
      
    </li>
    
    <li class="nav-item">
      <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
        <span class="user-profile"><img src="${links}/images/adminimage.jpg" class="img-circle" alt="user avatar"></span>
      </a>
      <ul class="dropdown-menu dropdown-menu-right">
       <li class="dropdown-item user-details">
        <a href="javaScript:void();">
           <div class="media">
             <div class="avatar"><img class="align-self-start mr-3" src="${links}/images/adminimage.jpg" alt="user avatar"></div>
            <div class="media-body">
            <h6 class="mt-2 user-title">Mr.Binh</h6>
            <p class="user-subtitle">mccoy@example.com</p>
            </div>
           </div>
          </a>
        </li>
        <li class="dropdown-divider"></li>
        <li class="dropdown-item"><i class="icon-envelope mr-2"></i> Inbox</li>
        <li class="dropdown-divider"></li>
        <li class="dropdown-item"><i class="icon-wallet mr-2"></i> Account</li>
        <li class="dropdown-divider"></li>
        <li class="dropdown-item"><i class="icon-settings mr-2"></i> Setting</li>
        <li class="dropdown-divider"></li>
        <li class="dropdown-item"><i class="icon-power mr-2"></i> Logout</li>
      </ul>
    </li>
  </ul>
</nav>
            <form action="" method="get" id="abc" onsubmit="funtionlang()" >
                <div style="display: none">
                    <input onclick="this.form.submit()" type="radio" name="lang" value="en" id="en"  >
                    <label  for="en">English</label>
                    <input onclick="this.form.submit()" type="radio" name="lang" value="vi" id="vi" >
                    <label for="vi">Viet Nam</label>
                </div>
            </form>
</header>
<!--End topbar header-->
<script>
    
    funtionlang(){
    <%
            String languetest = request.getParameter("lang");
            if(languetest==null){
                
            }
            else if(languetest.equals("")){
            }
            else if(languetest!=null){
                session.setAttribute("langue", languetest);
                
            }
            %>
                
    }
    
</script>    