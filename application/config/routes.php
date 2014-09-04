<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');
/*
  | -------------------------------------------------------------------------
  | URI ROUTING
  | -------------------------------------------------------------------------
  | This file lets you re-map URI requests to specific controller functions.
  |
  | Typically there is a one-to-one relationship between a URL string
  | and its corresponding controller class/method. The segments in a
  | URL normally follow this pattern:
  |
  |	example.com/class/method/id/
  |
  | In some instances, however, you may want to remap this relationship
  | so that a different class/function is called than the one
  | corresponding to the URL.
  |
  | Please see the user guide for complete details:
  |
  |	http://codeigniter.com/user_guide/general/routing.html
  |
  | -------------------------------------------------------------------------
  | RESERVED ROUTES
  | -------------------------------------------------------------------------
  |
  | There area two reserved routes:
  |
  |	$route['default_controller'] = 'welcome';
  |
  | This route indicates which controller class should be loaded if the
  | URI contains no data. In the above example, the "welcome" class
  | would be loaded.
  |
  |	$route['404_override'] = 'errors/page_missing';
  |
  | This route will tell the Router what URI segments to use if those provided
  | in the URL cannot be matched to a valid route.
  |
 */

$route['default_controller'] = "welcome";
$route['maps'] = "welcome/map";
$route['despre-asociatia-stop-hunger'] = "welcome/asociatia";
$route['proiecte'] = "welcome/proiecte";
$route['contact'] = "welcome/contact";
$route['proiect/:any'] = "welcome/proiect/1";
$route['noutati'] = "welcome/noutati/1";
$route['noutate/(:num)'] = "welcome/noutate/$1";
$route['doneaza'] = "welcome/doneaza";
$route['adopta-o-familie'] = "welcome/adoptaOFamilie";
$route['termeni-si-conditii'] = "welcome/termsAndAgreements";
$route['multumiri'] = "welcome/thanks";

$route['admin/delete-file/(:num)'] = "admin/deleteFile/$1";
$route['admin/delete-case/(:num)'] = "admin/deleteCase/$1";
$route['admin/delete-account/(:num)'] = "admin/deleteAccount/$1";


$route['admin'] = 'admin/index';
$route['admin/logout'] = 'admin/logout';

$route['admin/admin-dashboard'] = 'admin/aDashboard';
$route['admin/admin-dashboard/edit-account/(:num)'] = 'admin/editAccount/$1';
$route['admin/admin-dashboard/add-accounts'] = 'admin/adminAddAccounts';
$route['admin/admin-dashboard/list-accounts'] = 'admin/adminListAccounts';
$route['admin/admin-dashboard/projects'] = 'admin/adminListProjects';
$route['admin/admin-dashboard/project/(:num)'] = 'admin/adminEditProject/$1';


$route['admin/admin-dashboard/news'] = 'admin/adminListNews';
$route['admin/admin-dashboard/nws/(:num)'] = 'admin/adminEditNews/$1';
$route['admin/admin-dashboard/add-news'] = 'admin/adminAddNews';
$route['admin/admin-dashboard/delete-news/(:num)'] = 'admin/adminDeleteNews/$1';
$route['admin/admin-dashboard/testimonials/(:num)'] = 'admin/adminTestimonials/$1';//project id parameter
$route['admin/admin-dashboard/testimonial/(:num)'] = 'admin/adminTestimonial/$1';
$route['admin/admin-dashboard/add-testimonial/(:num)'] = 'admin/adminAddTestimonial/$1'; //project id parameter
$route['admin/admin-dashboard/delete-testimonial/(:num)'] = 'admin/adminDelTestimonial/$1'; //project id parameter

$route['admin/admin-dashboard/add-project'] = 'admin/adminAddProject';


$route['admin/manager-dashboard/add-case'] = 'admin/managerDashboard';
$route['admin/manager-dashboard/list-cases'] = 'admin/managerListCases';
$route['admin/manager-dashboard/case/(:num)'] = 'admin/manageCase/$1';






$route['sponsor'] = 'admin/sponsor';
$route['sponsor/case/(:num)'] = 'admin/sponsorCase/$1';

$route['404_override'] = '';


/* End of file routes.php */
/* Location: ./application/config/routes.php */