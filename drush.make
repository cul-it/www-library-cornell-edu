; features_profile make file for d.o. usage
core = "7.x"
api = "2"

projects[drupal] = "7.43"

; +++++ Modules +++++

projects[admin_menu] = "3.0-rc5"
projects[admin_menu][subdir] = "contrib"

projects[adminrole] = "1.1"
projects[adminrole][subdir] = "contrib"

projects[backup_migrate][version] = "2.8"
projects[backup_migrate][subdir] = "contrib"

projects[block_class][version] = "2.3"
projects[block_class][subdir] = "contrib"

projects[bundle_copy][version] = "1.1"
projects[bundle_copy][subdir] = "contrib"

projects[cache_actions][version] = "2.0-alpha5"
projects[cache_actions][subdir] = "contrib"

projects[cacheexclude][version] = "2.3"
projects[cacheexclude][subdir] = "contrib"

projects[ckeditor][version] = "1.17"
projects[ckeditor][subdir] = "contrib"

projects[context][version] = "3.6"
projects[context][subdir] = "contrib"

projects[custom_breadcrumbs][version] = "2.0-beta1"
projects[custom_breadcrumbs][subdir] = "contrib"

projects[ctools][version] = "1.9"
projects[ctools][subdir] = "contrib"

projects[date][version] = "2.9"
projects[date][subdir] = "contrib"

projects[devel][version] = "1.5"
projects[devel][subdir] = "contrib"

projects[diff][version] = "3.2"
projects[diff][subdir] = "contrib"

projects[email][subdir] = "contrib"
projects[email][version] = "1.3"

projects[elysia_cron][subdir] = "contrib"
projects[elysia_cron][version] = "2.1"

projects[entity][version] = "1.6"
projects[entity][subdir] = "contrib"

projects[entityreference][version] = "1.1"
projects[entityreference][subdir] = "contrib"

projects[features][version] = "2.7"
projects[features][subdir] = "contrib"

projects[features_extra][version] = "1.0"
projects[features_extra][subdir] = "contrib"

projects[feeds][version] = "2.0-beta2"
projects[feeds][subdir] = "contrib"

projects[feeds_node_helper][version] = "1.5"
projects[feeds_node_helper][subdir] = "contrib"

projects[feeds_tamper][version] = "1.1"
projects[feeds_tamper][subdir] = "contrib"

projects[feeds_xpathparser][version] = "1.1"
projects[feeds_xpathparser][subdir] = "contrib"

projects[field_group][subdir] = "contrib"
projects[field_group][version] = "1.5"

projects[gmap][version] = "2.10"
projects[gmap][subdir] = "contrib"

projects[google_analytics][version] = "2.1"
projects[google_analytics][subdir] = "contrib"

projects[hacked][version] = "2.0-beta5"
projects[hacked][subdir] = "contrib"

projects[imagefield_crop][version] = "1.1"
projects[imagefield_crop][subdir] = "contrib"

projects[imce][version] = "1.9"
projects[imce][subdir] = "contrib"

projects[job_scheduler][version] = "2.0-alpha3"
projects[job_scheduler][subdir] = "contrib"

; note: do not update from 2.3 - it breaks the site!
projects[jquery_update][version] = "2.7"
projects[jquery_update][subdir] = "contrib"

projects[libraries][version] = "2.2"
projects[libraries][subdir] = "contrib"

projects[link][version] = "1.4"
projects[link][subdir] = "contrib"

projects[linkchecker][version] = "1.2"
projects[linkchecker][subdir] = "contrib"

projects[linkit][version] = "3.5"
projects[linkit][subdir] = "contrib"

projects[location][version] = "3.7"
projects[location][subdir] = "contrib"

projects[mass_contact][version] = "1.1"
projects[mass_contact][subdir] = "contrib"

projects[media][version] = "1.5"
projects[media][subdir] = "contrib"

projects[menu_attributes][version] = "1.0"
projects[menu_attributes][subdir] = "contrib"

projects[menu_block][version] = "2.7"
projects[menu_block][subdir] = "contrib"

projects[migrate][version] = "2.8"
projects[migrate][subdir] = "contrib"

projects[migrate_d2d][version] = "2.1"
projects[migrate_d2d][subdir] = "contrib"

projects[mollom][version] = "2.15"
projects[mollom][subdir] = "contrib"

projects[node_export] = "3.0"
projects[node_export][subdir] = "contrib"

projects[nodequeue] = "2.0"
projects[nodequeue][subdir] = "contrib"

projects[pathauto][version] = "1.3"
projects[pathauto][subdir] = "contrib"

projects[pathologic][version] = "2.12"
projects[pathologic][subdir] = "contrib"

projects[profiler_builder][version] = "1.2"
projects[profiler_builder][subdir] = "contrib"

projects[redirect][version] = "1.0-rc3"
projects[redirect][subdir] = "contrib"

projects[references][subdir] = "contrib"
projects[references][version] = "2.1"

projects[reroute_email][subdir] = "contrib"
projects[reroute_email][version] = "1.2"

projects[role_export][version] = "1.0"
projects[role_export][subdir] = "contrib"

projects[rules][version] = "2.9"
projects[rules][subdir] = "contrib"

projects[schemaorg][version] = "1.0-rc1"
projects[schemaorg][subdir] = "contrib"

projects[session_cookie_lifetime][version] = "1.3"
projects[session_cookie_lifetime][subdir] =  "contrib"

projects[strongarm][version] = "2.0"
projects[strongarm][subdir] = "contrib"

projects[taxonomy_csv][version] = "5.10"
projects[taxonomy_csv][subdir] = "contrib"

projects[token][version] = "1.6"
projects[token][subdir] = "contrib"

projects[uuid][version] = "1.0-beta1"
projects[uuid][subdir] = "contrib"

projects[uuid_features][version] = "1.0-alpha4"
projects[uuid_features][subdir] = "contrib"

projects[viewreference][version] = "3.4"
projects[viewreference][subdir] = "contrib"

projects[views][version] = "3.13"
projects[views][subdir] = "contrib"

projects[views_bootstrap][version] = "3.1"
projects[views_bootstrap][subdir] = "contrib"

projects[views_bulk_operations][version] = "3.3"
projects[views_bulk_operations][subdir] = "contrib"

projects[views_php][version] = "1.0-alpha3"
projects[views_php][subdir] = "contrib"

projects[webform][version] = "3.24"
projects[webform][subdir] = "contrib"

projects[wysiwyg][version] = "2.2"
projects[wysiwyg][subdir] = "contrib"

projects[xmlsitemap][version] = "2.2"
projects[xmlsitemap][subdir] = "contrib"
;projects[xmlsitemap][patch][] = "http://www.drupal.org/files/issues/xmlsitemap-remove-filesize-2220707-50-D7.patch"

; +++++++++++ custom stuff

projects[ares][download][type] = "svn"
projects[ares][download][url] = "https://svn.library.cornell.edu/ares/branches/drupal7search/module"
projects[ares][revision] = "HEAD"
projects[ares][subdir] = "custom"
projects[ares][type] = "module"

projects[features_tools][type] = "module"
projects[features_tools][download][type] = "get"
projects[features_tools][download][url] = "http://featureserver.test.library.cornell.edu/capdeploy/sites/default/files/fserver/features_tools-7.x-1.0-alpha6_0.tar"
projects[features_tools][location] = http://featureserver.test.library.cornell.edu/capdeploy/?q=fserver
projects[features_tools][subdir] = "custom"
projects[features_tools][directory_name] = "features_tools"

projects[patroninfo][download][type] = "svn"
projects[patroninfo][download][url] = "https://svn.library.cornell.edu/patroninfo/branches/drupal7/module"
projects[patroninfo][revision] = "HEAD"
projects[patroninfo][subdir] = "custom"
projects[patroninfo][type] = "module"

projects[cul_hours][download][type] = "svn"
projects[cul_hours][download][url] = "https://svn.library.cornell.edu/cul_hours/branches/drupal7/module"
projects[cul_hours][revision] = "HEAD"
projects[cul_hours][subdir] = "custom"
projects[cul_hours][type] = "module"

projects[liaisons][download][type] = "svn"
projects[liaisons][download][url] = "https://svn.library.cornell.edu/liaisons/branches/drupal7/module"
projects[liaisons][revision] = "HEAD"
projects[liaisons][subdir] = "custom"
projects[liaisons][type] = "module"

projects[cu_webauth][download][type] = "svn"
projects[cu_webauth][download][url] = "https://svn.library.cornell.edu/cu-webauth/trunk/module"
projects[cu_webauth][revision] = "HEAD"
projects[cu_webauth][subdir] = "custom"
projects[cu_webauth][type] = "module"

projects[cu_emergency_banner][download][type] = "svn"
projects[cu_emergency_banner][download][url] = "https://svn.library.cornell.edu/cu-emergency-banner/trunk/module"
projects[cu_emergency_banner][revision] = "HEAD"
projects[cu_emergency_banner][subdir] = "custom"
projects[cu_emergency_banner][type] = "module"

; +++++ Themes +++++

projects[bootstrap][version] = "3.4"
projects[bootstrap][patch][] = "http://drupal.org/files/1940604-bootstrap-icon_api-7.patch"

projects[bootstrap_cul7][directory_name] = "bootstrap_cul7"
projects[bootstrap_cul7][download][branch] = "master"
projects[bootstrap_cul7][download][type] = "git"
projects[bootstrap_cul7][download][url] = "git@github.com:cul-it/www-library-cornell-edu-theme.git"
projects[bootstrap_cul7][type] = "theme"

; +++++ Libraries +++++

libraries[bootstrap][download][type] = "get"
libraries[bootstrap][download][url] = "https://github.com/twbs/bootstrap/archive/v3.0.2.zip"
libraries[bootstrap][directory_name] = "bootstrap"
libraries[bootstrap][destination] = themes/bootstrap

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.3/ckeditor_4.3_standard.zip"
libraries[ckeditor][directory_name] = "ckeditor"

libraries[fontawesome][directory_name] = "fontawesome"
libraries[fontawesome][download][type] = "get"
libraries[fontawesome][download][url] = "http://fortawesome.github.io/Font-Awesome/assets/font-awesome-4.5.0.zip"


