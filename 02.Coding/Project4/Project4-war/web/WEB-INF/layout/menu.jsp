<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="sidebar" data-color="orange">
    <!--
      Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
    <div class="logo">
        <a href="#" class="simple-text logo-mini">
            <img src="${links}/images/logo.png"/>
        </a>
        <a href="${links}/file/home/user/" class="simple-text logo-normal">
            ${admin}
        </a>
    </div>
    <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
            <li <c:if test="${homepage=='dashboard'}">class="active "</c:if>>
                <a href="${links}/file/home/dashboard/">
                    <i class="now-ui-icons design_app"></i>
                    <p>Dashboard</p>
                </a>
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
            <li <c:if test="${homepage=='icons'}">class="active "</c:if>>
                <a href="${links}/file/home/icons/">
                    <i class="now-ui-icons education_atom"></i>
                    <p>Icons</p>
                </a>
            </li>
            <li <c:if test="${homepage=='map'}">class="active "</c:if>>
                <a href="${links}/file/home/map/">
                    <i class="now-ui-icons location_map-big"></i>
                    <p>Maps</p>
                </a>
            </li>
            <li <c:if test="${homepage=='notifications'}">class="active "</c:if>>
                <a href="${links}/file/home/notifications/">
                    <i class="now-ui-icons ui-1_bell-53"></i>
                    <p>Notifications</p>
                </a>
            </li>
            <li <c:if test="${homepage=='user'}">class="active "</c:if>>
                <a href="${links}/file/home/user/">
                    <i class="now-ui-icons users_single-02"></i>
                    <p>User Profile</p>
                </a>
            </li>
            <li <c:if test="${homepage=='tables'}">class="active "</c:if>>
                <a href="${links}/file/home/tables/">
                    <i class="now-ui-icons design_bullet-list-67"></i>
                    <p>Table List</p>
                </a>
            </li>
            <li <c:if test="${homepage=='typography'}">class="active "</c:if>>
                <a href="${links}/file/home/typography/">
                    <i class="now-ui-icons text_caps-small"></i>
                    <p>Typography</p>
                </a>
            </li>
            <li <c:if test="${homepage=='upgrade'}">class="active"</c:if>>
                <a href="${links}/file/home/upgrade/">
                    <i class="now-ui-icons arrows-1_cloud-download-93"></i>
                    <p>Upgrade to PRO</p>
                </a>
            </li>
        </ul>
    </div>
</div>
