-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Хост: localhost
-- Время создания: Апр 06 2011 г., 23:42
-- Версия сервера: 5.0.45
-- Версия PHP: 5.2.4
-- 
-- БД: `sharnn`
-- 
CREATE DATABASE `sharnn` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE sharnn;

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_actiondom`
-- 

CREATE TABLE `sharnn_access_actiondom` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_access_actiondom`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_actions`
-- 

CREATE TABLE `sharnn_access_actions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_access_actions`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_category`
-- 

CREATE TABLE `sharnn_access_category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_access_category`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_context`
-- 

CREATE TABLE `sharnn_access_context` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Дамп данных таблицы `sharnn_access_context`
-- 

INSERT INTO `sharnn_access_context` VALUES (1, 'web', 'modUserGroup', 0, 9999, 3);
INSERT INTO `sharnn_access_context` VALUES (2, 'mgr', 'modUserGroup', 1, 0, 2);
INSERT INTO `sharnn_access_context` VALUES (3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_elements`
-- 

CREATE TABLE `sharnn_access_elements` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_access_elements`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_menus`
-- 

CREATE TABLE `sharnn_access_menus` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_access_menus`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_permissions`
-- 

CREATE TABLE `sharnn_access_permissions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `value` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

-- 
-- Дамп данных таблицы `sharnn_access_permissions`
-- 

INSERT INTO `sharnn_access_permissions` VALUES (1, 1, 'about', 'perm.about_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (2, 1, 'access_permissions', 'perm.access_permissions_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (3, 1, 'actions', 'perm.actions_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (4, 1, 'change_password', 'perm.change_password_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (5, 1, 'change_profile', 'perm.change_profile_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (6, 1, 'charsets', 'perm.charsets_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (7, 1, 'class_map', 'perm.class_map_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (8, 1, 'components', 'perm.components_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (9, 1, 'content_types', 'perm.content_types_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (10, 1, 'countries', 'perm.countries_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (11, 1, 'create', 'perm.create_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (12, 1, 'credits', 'perm.credits_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (13, 1, 'customize_forms', 'perm.customize_forms_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (14, 1, 'database', 'perm.database_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (15, 1, 'database_truncate', 'perm.database_truncate_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (16, 1, 'delete_category', 'perm.delete_category_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (17, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (18, 1, 'delete_context', 'perm.delete_context_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (19, 1, 'delete_document', 'perm.delete_document_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (20, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (21, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (22, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (23, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (24, 1, 'delete_template', 'perm.delete_template_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (25, 1, 'delete_tv', 'perm.delete_tv_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (26, 1, 'delete_role', 'perm.delete_role_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (27, 1, 'delete_user', 'perm.delete_user_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (28, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (29, 1, 'directory_create', 'perm.directory_create_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (30, 1, 'directory_list', 'perm.directory_list_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (31, 1, 'directory_remove', 'perm.directory_remove_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (32, 1, 'directory_update', 'perm.directory_update_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (33, 1, 'edit_category', 'perm.edit_category_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (34, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (35, 1, 'edit_context', 'perm.edit_context_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (36, 1, 'edit_document', 'perm.edit_document_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (37, 1, 'edit_locked', 'perm.edit_locked_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (38, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (39, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (40, 1, 'edit_role', 'perm.edit_role_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (41, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (42, 1, 'edit_template', 'perm.edit_template_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (43, 1, 'edit_tv', 'perm.edit_tv_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (44, 1, 'edit_user', 'perm.edit_user_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (45, 1, 'element_tree', 'perm.element_tree_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (46, 1, 'empty_cache', 'perm.empty_cache_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (47, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (48, 1, 'error_log_view', 'perm.error_log_view_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (49, 1, 'export_static', 'perm.export_static_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (50, 1, 'file_list', 'perm.file_list_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (51, 1, 'file_manager', 'perm.file_manager_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (52, 1, 'file_remove', 'perm.file_remove_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (53, 1, 'file_tree', 'perm.file_tree_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (54, 1, 'file_update', 'perm.file_update_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (55, 1, 'file_upload', 'perm.file_upload_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (56, 1, 'file_view', 'perm.file_view_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (57, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (58, 1, 'frames', 'perm.frames_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (59, 1, 'help', 'perm.help_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (60, 1, 'home', 'perm.home_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (61, 1, 'import_static', 'perm.import_static_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (62, 1, 'languages', 'perm.languages_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (63, 1, 'lexicons', 'perm.lexicons_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (64, 1, 'list', 'perm.list_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (65, 1, 'load', 'perm.load_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (66, 1, 'logout', 'perm.logout_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (67, 1, 'logs', 'perm.logs_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (68, 1, 'menus', 'perm.menus_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (69, 1, 'messages', 'perm.messages_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (70, 1, 'namespaces', 'perm.namespaces_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (71, 1, 'new_category', 'perm.new_category_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (72, 1, 'new_chunk', 'perm.new_chunk_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (73, 1, 'new_context', 'perm.new_context_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (74, 1, 'new_document', 'perm.new_document_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (75, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (76, 1, 'new_plugin', 'perm.new_plugin_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (77, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (78, 1, 'new_role', 'perm.new_role_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (79, 1, 'new_snippet', 'perm.new_snippet_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (80, 1, 'new_template', 'perm.new_template_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (81, 1, 'new_tv', 'perm.new_tv_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (82, 1, 'new_user', 'perm.new_user_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (83, 1, 'packages', 'perm.packages_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (84, 1, 'property_sets', 'perm.property_sets_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (85, 1, 'providers', 'perm.providers_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (86, 1, 'publish_document', 'perm.publish_document_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (87, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (88, 1, 'remove', 'perm.remove_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (89, 1, 'remove_locks', 'perm.remove_locks_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (90, 1, 'resource_tree', 'perm.resource_tree_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (91, 1, 'save', 'perm.save_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (92, 1, 'save_category', 'perm.save_category_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (93, 1, 'save_chunk', 'perm.save_chunk_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (94, 1, 'save_context', 'perm.save_context_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (95, 1, 'save_document', 'perm.save_document_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (96, 1, 'save_plugin', 'perm.save_plugin_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (97, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (98, 1, 'save_role', 'perm.save_role_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (99, 1, 'save_snippet', 'perm.save_snippet_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (100, 1, 'save_template', 'perm.save_template_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (101, 1, 'save_tv', 'perm.save_tv_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (102, 1, 'save_user', 'perm.save_user_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (103, 1, 'search', 'perm.search_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (104, 1, 'settings', 'perm.settings_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (105, 1, 'steal_locks', 'perm.steal_locks_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (106, 1, 'undelete_document', 'perm.undelete_document_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (107, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (108, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (109, 1, 'view', 'perm.view_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (110, 1, 'view_category', 'perm.view_category_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (111, 1, 'view_chunk', 'perm.view_chunk_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (112, 1, 'view_context', 'perm.view_context_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (113, 1, 'view_document', 'perm.view_document_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (114, 1, 'view_element', 'perm.view_element_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (115, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (116, 1, 'view_offline', 'perm.view_offline_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (117, 1, 'view_plugin', 'perm.view_plugin_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (118, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (119, 1, 'view_role', 'perm.view_role_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (120, 1, 'view_snippet', 'perm.view_snippet_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (121, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (122, 1, 'view_template', 'perm.view_template_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (123, 1, 'view_tv', 'perm.view_tv_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (124, 1, 'view_user', 'perm.view_user_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (125, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (126, 1, 'workspaces', 'perm.workspaces_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (127, 2, 'add_children', 'perm.add_children_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (128, 2, 'copy', 'perm.copy_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (129, 2, 'create', 'perm.create_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (130, 2, 'delete', 'perm.delete_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (131, 2, 'list', 'perm.list_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (132, 2, 'load', 'perm.load_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (133, 2, 'move', 'perm.move_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (134, 2, 'publish', 'perm.publish_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (135, 2, 'remove', 'perm.remove_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (136, 2, 'save', 'perm.save_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (137, 2, 'steal_lock', 'perm.steal_lock_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (138, 2, 'undelete', 'perm.undelete_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (139, 2, 'unpublish', 'perm.unpublish_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (140, 2, 'view', 'perm.view_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (141, 3, 'load', 'perm.load_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (142, 3, 'list', 'perm.list_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (143, 3, 'view', 'perm.view_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (144, 3, 'save', 'perm.save_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (145, 3, 'remove', 'perm.remove_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (146, 4, 'add_children', 'perm.add_children_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (147, 4, 'create', 'perm.create_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (148, 4, 'copy', 'perm.copy_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (149, 4, 'delete', 'perm.delete_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (150, 4, 'list', 'perm.list_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (151, 4, 'load', 'perm.load_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (152, 4, 'remove', 'perm.remove_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (153, 4, 'save', 'perm.save_desc', 1);
INSERT INTO `sharnn_access_permissions` VALUES (154, 4, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_policies`
-- 

CREATE TABLE `sharnn_access_policies` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent` int(10) unsigned NOT NULL default '0',
  `template` int(10) unsigned NOT NULL default '0',
  `class` varchar(255) NOT NULL default '',
  `data` text,
  `lexicon` varchar(255) NOT NULL default 'permissions',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Дамп данных таблицы `sharnn_access_policies`
-- 

INSERT INTO `sharnn_access_policies` VALUES (1, 'Resource', 'MODx Resource Policy with all attributes.', 0, 2, '', '{"add_children":true,"create":true,"copy":true,"delete":true,"list":true,"load":true,"move":true,"publish":true,"remove":true,"save":true,"steal_lock":true,"undelete":true,"unpublish":true,"view":true}', 'permissions');
INSERT INTO `sharnn_access_policies` VALUES (2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{"about":true,"access_permissions":true,"actions":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"database":true,"database_truncate":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_role":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"export_static":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_view":true,"flush_sessions":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menus":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_template":true,"new_tv":true,"new_user":true,"packages":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"remove_locks":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_role":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"steal_locks":true,"undelete_document":true,"unpublish_document":true,"unlock_element_properties":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_user":true,"view_unpublished":true,"workspaces":true}', 'permissions');
INSERT INTO `sharnn_access_policies` VALUES (3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{"load":true}', 'permissions');
INSERT INTO `sharnn_access_policies` VALUES (4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{"load":true,"list":true,"view":true}', 'permissions');
INSERT INTO `sharnn_access_policies` VALUES (5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true}', 'permissions');
INSERT INTO `sharnn_access_policies` VALUES (6, 'Element', 'MODx Element policy with all attributes.', 0, 4, '', '{"add_children":true,"create":true,"delete":true,"list":true,"load":true,"remove":true,"save":true,"view":true,"copy":true}', 'permissions');
INSERT INTO `sharnn_access_policies` VALUES (7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions.', 0, 1, '', '{"change_profile":true,"class_map":true,"countries":true,"edit_document":true,"frames":true,"help":true,"home":true,"load":true,"list":true,"logout":true,"resource_tree":true,"save_document":true,"view":true,"view_document":true,"new_document":true,"delete_document":true}', 'permissions');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_policy_template_groups`
-- 

CREATE TABLE `sharnn_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` mediumtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Дамп данных таблицы `sharnn_access_policy_template_groups`
-- 

INSERT INTO `sharnn_access_policy_template_groups` VALUES (1, 'Admin', 'All admin policy templates.');
INSERT INTO `sharnn_access_policy_template_groups` VALUES (2, 'Object', 'All Object-based policy templates.');
INSERT INTO `sharnn_access_policy_template_groups` VALUES (3, 'Resource', 'All Resource-based policy templates.');
INSERT INTO `sharnn_access_policy_template_groups` VALUES (4, 'Element', 'All Element-based policy templates.');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_policy_templates`
-- 

CREATE TABLE `sharnn_access_policy_templates` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template_group` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL default 'permissions',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Дамп данных таблицы `sharnn_access_policy_templates`
-- 

INSERT INTO `sharnn_access_policy_templates` VALUES (1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions');
INSERT INTO `sharnn_access_policy_templates` VALUES (2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions');
INSERT INTO `sharnn_access_policy_templates` VALUES (3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions');
INSERT INTO `sharnn_access_policy_templates` VALUES (4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_resource_groups`
-- 

CREATE TABLE `sharnn_access_resource_groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_access_resource_groups`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_resources`
-- 

CREATE TABLE `sharnn_access_resources` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_access_resources`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_access_templatevars`
-- 

CREATE TABLE `sharnn_access_templatevars` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_access_templatevars`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_actiondom`
-- 

CREATE TABLE `sharnn_actiondom` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `set` int(11) NOT NULL default '0',
  `action` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `xtype` varchar(100) NOT NULL default '',
  `container` varchar(255) NOT NULL default '',
  `rule` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL default '',
  `constraint_field` varchar(100) NOT NULL default '',
  `constraint_class` varchar(100) NOT NULL default '',
  `active` tinyint(1) unsigned NOT NULL default '1',
  `for_parent` tinyint(1) unsigned NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_actiondom`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_actions`
-- 

CREATE TABLE `sharnn_actions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `namespace` varchar(100) NOT NULL default 'core',
  `parent` int(10) unsigned NOT NULL default '0',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) unsigned NOT NULL default '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `namespace` (`namespace`),
  KEY `parent` (`parent`),
  KEY `controller` (`controller`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

-- 
-- Дамп данных таблицы `sharnn_actions`
-- 

INSERT INTO `sharnn_actions` VALUES (1, 'core', 0, 'welcome', 1, 'welcome,configcheck', '', '');
INSERT INTO `sharnn_actions` VALUES (2, 'core', 0, 'system', 0, '', '', '');
INSERT INTO `sharnn_actions` VALUES (3, 'core', 0, 'browser', 0, 'file', '', '');
INSERT INTO `sharnn_actions` VALUES (4, 'core', 6, 'context/create', 1, 'context,setting,access,policy,user', '', 'http://rtfm.modx.com/display/revolution20/Contexts');
INSERT INTO `sharnn_actions` VALUES (5, 'core', 6, 'context/update', 1, 'context,setting,access,policy,user', '', 'http://rtfm.modx.com/display/revolution20/Contexts');
INSERT INTO `sharnn_actions` VALUES (6, 'core', 6, 'context/view', 1, 'context', '', 'http://rtfm.modx.com/display/revolution20/Contexts');
INSERT INTO `sharnn_actions` VALUES (7, 'core', 0, 'element', 1, 'element', '', '');
INSERT INTO `sharnn_actions` VALUES (8, 'core', 10, 'element/chunk', 1, 'chunk,category,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Chunks');
INSERT INTO `sharnn_actions` VALUES (9, 'core', 11, 'element/chunk/create', 1, 'chunk,category,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Chunks');
INSERT INTO `sharnn_actions` VALUES (10, 'core', 11, 'element/chunk/update', 1, 'chunk,category,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Chunks');
INSERT INTO `sharnn_actions` VALUES (11, 'core', 10, 'element/plugin', 1, 'plugin,category,system_events,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Plugins');
INSERT INTO `sharnn_actions` VALUES (12, 'core', 20, 'element/plugin/create', 1, 'plugin,category,system_events,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Plugins');
INSERT INTO `sharnn_actions` VALUES (13, 'core', 20, 'element/plugin/update', 1, 'plugin,category,system_events,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Plugins');
INSERT INTO `sharnn_actions` VALUES (14, 'core', 10, 'element/snippet', 1, 'snippet,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Snippets');
INSERT INTO `sharnn_actions` VALUES (15, 'core', 25, 'element/snippet/create', 1, 'snippet,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Snippets');
INSERT INTO `sharnn_actions` VALUES (16, 'core', 25, 'element/snippet/update', 1, 'snippet,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Snippets');
INSERT INTO `sharnn_actions` VALUES (17, 'core', 10, 'element/template', 1, 'template,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Templates');
INSERT INTO `sharnn_actions` VALUES (18, 'core', 28, 'element/template/create', 1, 'template,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Templates');
INSERT INTO `sharnn_actions` VALUES (19, 'core', 28, 'element/template/update', 1, 'template,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Templates');
INSERT INTO `sharnn_actions` VALUES (20, 'core', 28, 'element/template/tvsort', 1, 'template,tv,propertyset,element', '', '');
INSERT INTO `sharnn_actions` VALUES (21, 'core', 10, 'element/tv', 1, 'tv,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Template+Variables');
INSERT INTO `sharnn_actions` VALUES (22, 'core', 32, 'element/tv/create', 1, 'tv,tv_widget,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Template+Variables');
INSERT INTO `sharnn_actions` VALUES (23, 'core', 32, 'element/tv/update', 1, 'tv,tv_widget,propertyset,element', '', 'http://rtfm.modx.com/display/revolution20/Template+Variables');
INSERT INTO `sharnn_actions` VALUES (24, 'core', 10, 'element/view', 1, 'element', '', '');
INSERT INTO `sharnn_actions` VALUES (25, 'core', 0, 'resource', 1, '', '', '');
INSERT INTO `sharnn_actions` VALUES (26, 'core', 46, 'security/usergroup/create', 1, 'user,access,policy,context', '', 'http://rtfm.modx.com/display/revolution20/User+Groups');
INSERT INTO `sharnn_actions` VALUES (27, 'core', 46, 'security/usergroup/update', 1, 'user,access,policy,context', '', 'http://rtfm.modx.com/display/revolution20/User+Groups');
INSERT INTO `sharnn_actions` VALUES (28, 'core', 36, 'resource/data', 1, 'resource', '', 'http://rtfm.modx.com/display/revolution20/Resource');
INSERT INTO `sharnn_actions` VALUES (29, 'core', 36, 'resource/empty_recycle_bin', 1, 'resource', '', '');
INSERT INTO `sharnn_actions` VALUES (30, 'core', 36, 'resource/update', 1, 'resource', '', 'http://rtfm.modx.com/display/revolution20/Resource');
INSERT INTO `sharnn_actions` VALUES (31, 'core', 0, 'security', 1, 'user', '', '');
INSERT INTO `sharnn_actions` VALUES (32, 'core', 46, 'security/role', 1, 'user', '', 'http://rtfm.modx.com/display/revolution20/Roles');
INSERT INTO `sharnn_actions` VALUES (33, 'core', 53, 'security/user/create', 1, 'user,setting,access', '', 'http://rtfm.modx.com/display/revolution20/Users');
INSERT INTO `sharnn_actions` VALUES (34, 'core', 53, 'security/user/update', 1, 'user,setting,access', '', 'http://rtfm.modx.com/display/revolution20/Users');
INSERT INTO `sharnn_actions` VALUES (35, 'core', 46, 'security/login', 1, 'login', '', '');
INSERT INTO `sharnn_actions` VALUES (36, 'core', 57, 'system/event/details', 1, '', '', '');
INSERT INTO `sharnn_actions` VALUES (37, 'core', 3, 'system/refresh_site', 1, '', '', '');
INSERT INTO `sharnn_actions` VALUES (38, 'core', 3, 'system/phpinfo', 1, '', '', '');
INSERT INTO `sharnn_actions` VALUES (39, 'core', 36, 'resource/tvs', 0, '', '', '');
INSERT INTO `sharnn_actions` VALUES (40, 'core', 3, 'system/file', 1, 'file', '', '');
INSERT INTO `sharnn_actions` VALUES (41, 'core', 70, 'system/file/edit', 1, 'file', '', '');
INSERT INTO `sharnn_actions` VALUES (42, 'core', 65, 'security/access/policy/update', 1, 'user,policy', '', 'http://rtfm.modx.com/display/revolution20/Policies');
INSERT INTO `sharnn_actions` VALUES (43, 'core', 212, 'workspaces/package/view', 1, 'workspace,namespace', '', 'http://rtfm.modx.com/display/revolution20/Package+Management');
INSERT INTO `sharnn_actions` VALUES (44, 'core', 65, 'security/access/policy/template/update', 1, 'user,policy', '', 'http://rtfm.modx.com/display/revolution20/PolicyTemplates');
INSERT INTO `sharnn_actions` VALUES (45, 'core', 46, 'security/forms/profile/update', 1, 'formcustomization,user,access,policy', '', 'http://rtfm.modx.com/display/revolution20/Form+Customization+Profiles');
INSERT INTO `sharnn_actions` VALUES (46, 'core', 46, 'security/forms/set/update', 1, 'formcustomization,user,access,policy', '', 'http://rtfm.modx.com/display/revolution20/Form+Customization+Sets');
INSERT INTO `sharnn_actions` VALUES (47, 'core', 0, 'search', 1, '', '', '');
INSERT INTO `sharnn_actions` VALUES (48, 'core', 36, 'resource/create', 1, 'resource', '', 'http://rtfm.modx.com/display/revolution20/Resource');
INSERT INTO `sharnn_actions` VALUES (49, 'core', 46, 'security/user', 1, 'user', '', 'http://rtfm.modx.com/display/revolution20/Users');
INSERT INTO `sharnn_actions` VALUES (50, 'core', 46, 'security/permission', 1, 'user,access,policy', '', 'http://rtfm.modx.com/display/revolution20/Security');
INSERT INTO `sharnn_actions` VALUES (51, 'core', 46, 'security/resourcegroup/index', 1, 'resource,user,access', '', 'http://rtfm.modx.com/display/revolution20/Resource+Groups');
INSERT INTO `sharnn_actions` VALUES (52, 'core', 46, 'security/forms', 1, 'formcustomization,user,access,policy', '', 'http://rtfm.modx.com/display/revolution20/Customizing+The+Manager');
INSERT INTO `sharnn_actions` VALUES (53, 'core', 3, 'system/import', 1, 'import', '', '');
INSERT INTO `sharnn_actions` VALUES (54, 'core', 59, 'system/import/html', 1, 'import', '', '');
INSERT INTO `sharnn_actions` VALUES (55, 'core', 10, 'element/propertyset/index', 1, 'element,category,propertyset', '', 'http://rtfm.modx.com/display/revolution20/Properties+and+Property+Sets');
INSERT INTO `sharnn_actions` VALUES (56, 'core', 36, 'resource/site_schedule', 1, 'resource', '', '');
INSERT INTO `sharnn_actions` VALUES (57, 'core', 0, 'system/logs/index', 1, 'manager_log', '', '');
INSERT INTO `sharnn_actions` VALUES (58, 'core', 3, 'system/event', 1, 'system_events', '', '');
INSERT INTO `sharnn_actions` VALUES (59, 'core', 3, 'system/info', 1, 'system_info', '', '');
INSERT INTO `sharnn_actions` VALUES (60, 'core', 0, 'help', 1, 'about', '', '');
INSERT INTO `sharnn_actions` VALUES (61, 'core', 3, 'workspaces', 1, 'workspace', '', 'http://rtfm.modx.com/display/revolution20/Package+Management');
INSERT INTO `sharnn_actions` VALUES (62, 'core', 3, 'system/settings', 1, 'setting', '', 'http://rtfm.modx.com/display/revolution20/Settings');
INSERT INTO `sharnn_actions` VALUES (63, 'core', 68, 'workspaces/lexicon', 1, 'package_builder,lexicon,namespace', '', 'http://rtfm.modx.com/display/revolution20/Internationalization');
INSERT INTO `sharnn_actions` VALUES (64, 'core', 3, 'system/contenttype', 1, 'content_type', '', 'http://rtfm.modx.com/display/revolution20/Content+Types');
INSERT INTO `sharnn_actions` VALUES (65, 'core', 0, 'context', 1, 'context', '', 'http://rtfm.modx.com/display/revolution20/Contexts');
INSERT INTO `sharnn_actions` VALUES (66, 'core', 3, 'system/action', 1, 'action,menu,namespace', '', 'http://rtfm.modx.com/display/revolution20/Actions+and+Menus');
INSERT INTO `sharnn_actions` VALUES (67, 'core', 68, 'workspaces/namespace', 1, 'workspace,package_builder,lexicon,namespace', '', 'http://rtfm.modx.com/display/revolution20/Namespaces');
INSERT INTO `sharnn_actions` VALUES (68, 'core', 46, 'security/profile', 1, 'user', '', '');
INSERT INTO `sharnn_actions` VALUES (69, 'core', 46, 'security/message', 1, 'messages', '', '');
INSERT INTO `sharnn_actions` VALUES (70, 'gallery', 0, 'index', 1, 'gallery:default', '', '');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_actions_fields`
-- 

CREATE TABLE `sharnn_actions_fields` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `action` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `type` varchar(100) NOT NULL default 'field',
  `tab` varchar(255) NOT NULL default '',
  `form` varchar(255) NOT NULL default '',
  `other` varchar(255) NOT NULL default '',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

-- 
-- Дамп данных таблицы `sharnn_actions_fields`
-- 

INSERT INTO `sharnn_actions_fields` VALUES (1, 30, 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0);
INSERT INTO `sharnn_actions_fields` VALUES (2, 30, 'id', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 0);
INSERT INTO `sharnn_actions_fields` VALUES (3, 30, 'template', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 1);
INSERT INTO `sharnn_actions_fields` VALUES (4, 30, 'published', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 2);
INSERT INTO `sharnn_actions_fields` VALUES (5, 30, 'pagetitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 3);
INSERT INTO `sharnn_actions_fields` VALUES (6, 30, 'longtitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 4);
INSERT INTO `sharnn_actions_fields` VALUES (7, 30, 'description', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 5);
INSERT INTO `sharnn_actions_fields` VALUES (8, 30, 'alias', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 6);
INSERT INTO `sharnn_actions_fields` VALUES (9, 30, 'link_attributes', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 7);
INSERT INTO `sharnn_actions_fields` VALUES (10, 30, 'introtext', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 8);
INSERT INTO `sharnn_actions_fields` VALUES (11, 30, 'parent-cmb', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 9);
INSERT INTO `sharnn_actions_fields` VALUES (12, 30, 'menutitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 10);
INSERT INTO `sharnn_actions_fields` VALUES (13, 30, 'menuindex', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 11);
INSERT INTO `sharnn_actions_fields` VALUES (14, 30, 'hidemenu', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 12);
INSERT INTO `sharnn_actions_fields` VALUES (15, 30, 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 1);
INSERT INTO `sharnn_actions_fields` VALUES (16, 30, 'isfolder', 'field', 'modx-page-settings', 'modx-panel-resource', '', 0);
INSERT INTO `sharnn_actions_fields` VALUES (17, 30, 'richtext', 'field', 'modx-page-settings', 'modx-panel-resource', '', 1);
INSERT INTO `sharnn_actions_fields` VALUES (18, 30, 'publishedon', 'field', 'modx-page-settings', 'modx-panel-resource', '', 2);
INSERT INTO `sharnn_actions_fields` VALUES (19, 30, 'pub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', 3);
INSERT INTO `sharnn_actions_fields` VALUES (20, 30, 'unpub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', 4);
INSERT INTO `sharnn_actions_fields` VALUES (21, 30, 'searchable', 'field', 'modx-page-settings', 'modx-panel-resource', '', 5);
INSERT INTO `sharnn_actions_fields` VALUES (22, 30, 'cacheable', 'field', 'modx-page-settings', 'modx-panel-resource', '', 6);
INSERT INTO `sharnn_actions_fields` VALUES (23, 30, 'syncsite', 'field', 'modx-page-settings', 'modx-panel-resource', '', 7);
INSERT INTO `sharnn_actions_fields` VALUES (24, 30, 'deleted', 'field', 'modx-page-settings', 'modx-panel-resource', '', 8);
INSERT INTO `sharnn_actions_fields` VALUES (25, 30, 'content_type', 'field', 'modx-page-settings', 'modx-panel-resource', '', 9);
INSERT INTO `sharnn_actions_fields` VALUES (26, 30, 'content_dispo', 'field', 'modx-page-settings', 'modx-panel-resource', '', 10);
INSERT INTO `sharnn_actions_fields` VALUES (27, 30, 'class_key', 'field', 'modx-page-settings', 'modx-panel-resource', '', 11);
INSERT INTO `sharnn_actions_fields` VALUES (28, 30, 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 2);
INSERT INTO `sharnn_actions_fields` VALUES (29, 30, 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 3);
INSERT INTO `sharnn_actions_fields` VALUES (30, 30, 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);
INSERT INTO `sharnn_actions_fields` VALUES (31, 48, 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0);
INSERT INTO `sharnn_actions_fields` VALUES (32, 48, 'template', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 0);
INSERT INTO `sharnn_actions_fields` VALUES (33, 48, 'published', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 1);
INSERT INTO `sharnn_actions_fields` VALUES (34, 48, 'pagetitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 2);
INSERT INTO `sharnn_actions_fields` VALUES (35, 48, 'longtitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 3);
INSERT INTO `sharnn_actions_fields` VALUES (36, 48, 'description', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 4);
INSERT INTO `sharnn_actions_fields` VALUES (37, 48, 'alias', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 5);
INSERT INTO `sharnn_actions_fields` VALUES (38, 48, 'link_attributes', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 6);
INSERT INTO `sharnn_actions_fields` VALUES (39, 48, 'introtext', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 7);
INSERT INTO `sharnn_actions_fields` VALUES (40, 48, 'parent-cmb', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 8);
INSERT INTO `sharnn_actions_fields` VALUES (41, 48, 'menutitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 9);
INSERT INTO `sharnn_actions_fields` VALUES (42, 48, 'menuindex', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 10);
INSERT INTO `sharnn_actions_fields` VALUES (43, 48, 'hidemenu', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 11);
INSERT INTO `sharnn_actions_fields` VALUES (44, 48, 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 1);
INSERT INTO `sharnn_actions_fields` VALUES (45, 48, 'isfolder', 'field', 'modx-page-settings', 'modx-panel-resource', '', 0);
INSERT INTO `sharnn_actions_fields` VALUES (46, 48, 'richtext', 'field', 'modx-page-settings', 'modx-panel-resource', '', 1);
INSERT INTO `sharnn_actions_fields` VALUES (47, 48, 'publishedon', 'field', 'modx-page-settings', 'modx-panel-resource', '', 2);
INSERT INTO `sharnn_actions_fields` VALUES (48, 48, 'pub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', 3);
INSERT INTO `sharnn_actions_fields` VALUES (49, 48, 'unpub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', 4);
INSERT INTO `sharnn_actions_fields` VALUES (50, 48, 'searchable', 'field', 'modx-page-settings', 'modx-panel-resource', '', 5);
INSERT INTO `sharnn_actions_fields` VALUES (51, 48, 'cacheable', 'field', 'modx-page-settings', 'modx-panel-resource', '', 6);
INSERT INTO `sharnn_actions_fields` VALUES (52, 48, 'syncsite', 'field', 'modx-page-settings', 'modx-panel-resource', '', 7);
INSERT INTO `sharnn_actions_fields` VALUES (53, 48, 'deleted', 'field', 'modx-page-settings', 'modx-panel-resource', '', 8);
INSERT INTO `sharnn_actions_fields` VALUES (54, 48, 'content_type', 'field', 'modx-page-settings', 'modx-panel-resource', '', 9);
INSERT INTO `sharnn_actions_fields` VALUES (55, 48, 'content_dispo', 'field', 'modx-page-settings', 'modx-panel-resource', '', 10);
INSERT INTO `sharnn_actions_fields` VALUES (56, 48, 'class_key', 'field', 'modx-page-settings', 'modx-panel-resource', '', 11);
INSERT INTO `sharnn_actions_fields` VALUES (57, 48, 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 2);
INSERT INTO `sharnn_actions_fields` VALUES (58, 48, 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 3);
INSERT INTO `sharnn_actions_fields` VALUES (59, 48, 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_active_users`
-- 

CREATE TABLE `sharnn_active_users` (
  `internalKey` int(9) NOT NULL default '0',
  `username` varchar(50) NOT NULL default '',
  `lasthit` int(20) NOT NULL default '0',
  `id` int(10) default NULL,
  `action` varchar(255) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_active_users`
-- 

INSERT INTO `sharnn_active_users` VALUES (1, 'chem', 1301861787, 0, '39', '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_categories`
-- 

CREATE TABLE `sharnn_categories` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `parent` int(10) unsigned default '0',
  `category` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `category` (`category`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_categories`
-- 

INSERT INTO `sharnn_categories` VALUES (1, 0, 'Gallery');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_categories_closure`
-- 

CREATE TABLE `sharnn_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL default '0',
  `descendant` int(10) unsigned NOT NULL default '0',
  `depth` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ancestor`,`descendant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_categories_closure`
-- 

INSERT INTO `sharnn_categories_closure` VALUES (1, 1, 0);
INSERT INTO `sharnn_categories_closure` VALUES (0, 1, 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_class_map`
-- 

CREATE TABLE `sharnn_class_map` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `class` varchar(120) NOT NULL default '',
  `parent_class` varchar(120) NOT NULL default '',
  `name_field` varchar(255) NOT NULL default 'name',
  `path` tinytext,
  `lexicon` varchar(255) NOT NULL default 'core:resource',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `class` (`class`),
  KEY `parent_class` (`parent_class`),
  KEY `name_field` (`name_field`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Дамп данных таблицы `sharnn_class_map`
-- 

INSERT INTO `sharnn_class_map` VALUES (1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource');
INSERT INTO `sharnn_class_map` VALUES (2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource');
INSERT INTO `sharnn_class_map` VALUES (3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource');
INSERT INTO `sharnn_class_map` VALUES (4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource');
INSERT INTO `sharnn_class_map` VALUES (5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource');
INSERT INTO `sharnn_class_map` VALUES (6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource');
INSERT INTO `sharnn_class_map` VALUES (7, 'modChunk', 'modElement', 'name', '', 'core:resource');
INSERT INTO `sharnn_class_map` VALUES (8, 'modSnippet', 'modElement', 'name', '', 'core:resource');
INSERT INTO `sharnn_class_map` VALUES (9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_content_type`
-- 

CREATE TABLE `sharnn_content_type` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Дамп данных таблицы `sharnn_content_type`
-- 

INSERT INTO `sharnn_content_type` VALUES (1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0);
INSERT INTO `sharnn_content_type` VALUES (2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0);
INSERT INTO `sharnn_content_type` VALUES (3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0);
INSERT INTO `sharnn_content_type` VALUES (4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0);
INSERT INTO `sharnn_content_type` VALUES (5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0);
INSERT INTO `sharnn_content_type` VALUES (6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_context`
-- 

CREATE TABLE `sharnn_context` (
  `key` varchar(100) NOT NULL,
  `description` tinytext,
  PRIMARY KEY  (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_context`
-- 

INSERT INTO `sharnn_context` VALUES ('web', 'The default front-end context for your web site.');
INSERT INTO `sharnn_context` VALUES ('mgr', 'The default manager or administration context for content management activity.');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_context_resource`
-- 

CREATE TABLE `sharnn_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`context_key`,`resource`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_context_resource`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_context_setting`
-- 

CREATE TABLE `sharnn_context_setting` (
  `context_key` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL default 'textfield',
  `namespace` varchar(40) NOT NULL default 'core',
  `area` varchar(255) NOT NULL default '',
  `editedon` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`context_key`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_context_setting`
-- 

INSERT INTO `sharnn_context_setting` VALUES ('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_context_setting` VALUES ('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_document_groups`
-- 

CREATE TABLE `sharnn_document_groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `document_group` int(10) NOT NULL default '0',
  `document` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_document_groups`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_documentgroup_names`
-- 

CREATE TABLE `sharnn_documentgroup_names` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `private_memgroup` tinyint(1) unsigned NOT NULL default '0',
  `private_webgroup` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_documentgroup_names`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_element_property_sets`
-- 

CREATE TABLE `sharnn_element_property_sets` (
  `element` int(10) unsigned NOT NULL default '0',
  `element_class` varchar(100) NOT NULL default '',
  `property_set` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`element`,`element_class`,`property_set`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_element_property_sets`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_event_log`
-- 

CREATE TABLE `sharnn_event_log` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `eventid` int(11) default '0',
  `createdon` int(11) NOT NULL default '0',
  `type` tinyint(4) unsigned NOT NULL default '1',
  `user` int(11) NOT NULL default '0',
  `usertype` tinyint(4) NOT NULL default '0',
  `source` varchar(50) NOT NULL default '',
  `description` text,
  PRIMARY KEY  (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_event_log`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_fc_profiles`
-- 

CREATE TABLE `sharnn_fc_profiles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_fc_profiles`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_fc_profiles_usergroups`
-- 

CREATE TABLE `sharnn_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL default '0',
  `profile` int(11) NOT NULL default '0',
  PRIMARY KEY  (`usergroup`,`profile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_fc_profiles_usergroups`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_fc_sets`
-- 

CREATE TABLE `sharnn_fc_sets` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `profile` int(11) NOT NULL default '0',
  `action` int(11) NOT NULL default '0',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  `template` int(11) NOT NULL default '0',
  `constraint` varchar(255) NOT NULL default '',
  `constraint_field` varchar(100) NOT NULL default '',
  `constraint_class` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_fc_sets`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_gallery_album_contexts`
-- 

CREATE TABLE `sharnn_gallery_album_contexts` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `album` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default 'web',
  PRIMARY KEY  (`id`),
  KEY `album` (`album`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_gallery_album_contexts`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_gallery_album_items`
-- 

CREATE TABLE `sharnn_gallery_album_items` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `item` int(10) unsigned NOT NULL default '0',
  `album` int(10) unsigned NOT NULL default '0',
  `rank` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `item` (`item`),
  KEY `album` (`album`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Дамп данных таблицы `sharnn_gallery_album_items`
-- 

INSERT INTO `sharnn_gallery_album_items` VALUES (1, 1, 1, 0);
INSERT INTO `sharnn_gallery_album_items` VALUES (2, 2, 1, 1);
INSERT INTO `sharnn_gallery_album_items` VALUES (3, 3, 1, 2);
INSERT INTO `sharnn_gallery_album_items` VALUES (4, 4, 1, 3);
INSERT INTO `sharnn_gallery_album_items` VALUES (5, 5, 1, 4);
INSERT INTO `sharnn_gallery_album_items` VALUES (6, 6, 1, 5);
INSERT INTO `sharnn_gallery_album_items` VALUES (7, 7, 1, 6);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_gallery_albums`
-- 

CREATE TABLE `sharnn_gallery_albums` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `parent` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `createdon` datetime default NULL,
  `createdby` int(10) unsigned NOT NULL default '0',
  `rank` int(10) unsigned NOT NULL default '0',
  `active` tinyint(1) unsigned NOT NULL default '0',
  `prominent` tinyint(1) unsigned NOT NULL default '0',
  `watermark` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `parent` (`parent`),
  KEY `name` (`name`),
  KEY `createdby` (`createdby`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_gallery_albums`
-- 

INSERT INTO `sharnn_gallery_albums` VALUES (1, 0, 'Воздушные шары', '', '2011-04-03 21:51:37', 1, 0, 1, 1, '');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_gallery_items`
-- 

CREATE TABLE `sharnn_gallery_items` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `filename` varchar(255) NOT NULL default '',
  `description` text,
  `mediatype` varchar(40) NOT NULL default 'image',
  `url` text,
  `createdon` datetime default NULL,
  `createdby` int(10) unsigned NOT NULL default '0',
  `active` tinyint(1) unsigned NOT NULL default '0',
  `duration` varchar(40) NOT NULL default '',
  `streamer` text,
  `watermark_pos` varchar(10) NOT NULL default 'tl',
  PRIMARY KEY  (`id`),
  KEY `createdby` (`createdby`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Дамп данных таблицы `sharnn_gallery_items`
-- 

INSERT INTO `sharnn_gallery_items` VALUES (1, 'Букет 1', '1/1.jpg', '', 'image', '', '2011-04-03 21:54:09', 1, 1, '', NULL, 'tl');
INSERT INTO `sharnn_gallery_items` VALUES (2, 'Букет 2', '1/2.jpg', '', 'image', '', '2011-04-03 21:58:04', 1, 1, '', NULL, 'tl');
INSERT INTO `sharnn_gallery_items` VALUES (3, 'Букет 3', '1/3.jpg', '', 'image', '', '2011-04-03 23:14:40', 1, 1, '', NULL, 'tl');
INSERT INTO `sharnn_gallery_items` VALUES (4, 'Букет 4', '1/4.jpg', '', 'image', '', '2011-04-03 23:14:55', 1, 1, '', NULL, 'tl');
INSERT INTO `sharnn_gallery_items` VALUES (5, 'Букет 5', '1/5.jpg', '', 'image', '', '2011-04-03 23:50:40', 1, 1, '', NULL, 'tl');
INSERT INTO `sharnn_gallery_items` VALUES (6, 'Букет 6', '1/6.jpg', '', 'image', '', '2011-04-04 00:05:52', 1, 1, '', NULL, 'tl');
INSERT INTO `sharnn_gallery_items` VALUES (7, 'Букет 7', '1/7.jpg', '', 'image', '', '2011-04-04 00:08:43', 1, 1, '', NULL, 'tl');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_gallery_tags`
-- 

CREATE TABLE `sharnn_gallery_tags` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `item` int(10) unsigned NOT NULL default '0',
  `tag` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `item` (`item`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Дамп данных таблицы `sharnn_gallery_tags`
-- 

INSERT INTO `sharnn_gallery_tags` VALUES (2, 4, 'Букет 4');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_keyword_xref`
-- 

CREATE TABLE `sharnn_keyword_xref` (
  `content_id` int(11) NOT NULL default '0',
  `keyword_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`,`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_keyword_xref`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_lexicon_entries`
-- 

CREATE TABLE `sharnn_lexicon_entries` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `value` text NOT NULL,
  `topic` varchar(255) NOT NULL default 'default',
  `namespace` varchar(40) NOT NULL default 'core',
  `language` varchar(20) NOT NULL default 'en',
  `createdon` datetime default NULL,
  `editedon` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_lexicon_entries`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_manager_log`
-- 

CREATE TABLE `sharnn_manager_log` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user` int(10) unsigned NOT NULL default '0',
  `occurred` datetime default '0000-00-00 00:00:00',
  `action` varchar(100) NOT NULL default '',
  `classKey` varchar(100) NOT NULL default '',
  `item` varchar(255) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

-- 
-- Дамп данных таблицы `sharnn_manager_log`
-- 

INSERT INTO `sharnn_manager_log` VALUES (1, 1, '2011-04-03 21:38:11', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (2, 1, '2011-04-03 21:55:04', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (3, 1, '2011-04-03 21:56:28', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (4, 1, '2011-04-03 22:12:15', 'template_update', 'modTemplate', '1');
INSERT INTO `sharnn_manager_log` VALUES (5, 1, '2011-04-03 22:14:50', 'template_update', 'modTemplate', '1');
INSERT INTO `sharnn_manager_log` VALUES (6, 1, '2011-04-03 22:22:37', 'chunk_create', 'modChunk', '3');
INSERT INTO `sharnn_manager_log` VALUES (7, 1, '2011-04-03 22:23:52', 'chunk_create', 'modChunk', '4');
INSERT INTO `sharnn_manager_log` VALUES (8, 1, '2011-04-03 22:24:23', 'chunk_create', 'modChunk', '5');
INSERT INTO `sharnn_manager_log` VALUES (9, 1, '2011-04-03 22:26:51', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (10, 1, '2011-04-03 22:27:47', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (11, 1, '2011-04-03 22:28:30', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (12, 1, '2011-04-03 22:29:17', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (13, 1, '2011-04-03 22:29:31', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (14, 1, '2011-04-03 22:38:20', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (15, 1, '2011-04-03 22:42:15', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (16, 1, '2011-04-03 22:42:28', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (17, 1, '2011-04-03 22:42:42', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (18, 1, '2011-04-03 22:42:52', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (19, 1, '2011-04-03 22:43:24', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (20, 1, '2011-04-03 22:43:43', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (21, 1, '2011-04-03 22:44:13', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (22, 1, '2011-04-03 22:44:37', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (23, 1, '2011-04-03 22:44:49', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (24, 1, '2011-04-03 22:48:41', 'template_update', 'modTemplate', '1');
INSERT INTO `sharnn_manager_log` VALUES (25, 1, '2011-04-03 22:51:27', 'template_update', 'modTemplate', '1');
INSERT INTO `sharnn_manager_log` VALUES (26, 1, '2011-04-03 22:52:24', 'chunk_update', 'modChunk', '2');
INSERT INTO `sharnn_manager_log` VALUES (27, 1, '2011-04-03 22:54:56', 'template_update', 'modTemplate', '1');
INSERT INTO `sharnn_manager_log` VALUES (28, 1, '2011-04-03 22:58:28', 'template_update', 'modTemplate', '1');
INSERT INTO `sharnn_manager_log` VALUES (29, 1, '2011-04-03 23:02:55', 'chunk_update', 'modChunk', '2');
INSERT INTO `sharnn_manager_log` VALUES (30, 1, '2011-04-03 23:04:34', 'chunk_update', 'modChunk', '4');
INSERT INTO `sharnn_manager_log` VALUES (31, 1, '2011-04-03 23:06:53', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (32, 1, '2011-04-03 23:08:52', 'chunk_update', 'modChunk', '4');
INSERT INTO `sharnn_manager_log` VALUES (33, 1, '2011-04-03 23:10:32', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (34, 1, '2011-04-04 00:16:37', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (35, 1, '2011-04-04 00:17:19', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (36, 1, '2011-04-04 00:18:38', 'save_resource', 'modResource', '1');
INSERT INTO `sharnn_manager_log` VALUES (37, 1, '2011-04-04 00:19:05', 'save_resource', 'modResource', '1');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_member_groups`
-- 

CREATE TABLE `sharnn_member_groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_group` int(10) unsigned NOT NULL default '0',
  `member` int(10) unsigned NOT NULL default '0',
  `role` int(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `role` (`role`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_member_groups`
-- 

INSERT INTO `sharnn_member_groups` VALUES (1, 1, 1, 2);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_membergroup_names`
-- 

CREATE TABLE `sharnn_membergroup_names` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `parent` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_membergroup_names`
-- 

INSERT INTO `sharnn_membergroup_names` VALUES (1, 'Administrator', 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_menus`
-- 

CREATE TABLE `sharnn_menus` (
  `text` varchar(255) NOT NULL default '',
  `parent` varchar(255) NOT NULL default '',
  `action` int(11) unsigned NOT NULL default '0',
  `description` varchar(255) NOT NULL default '',
  `icon` varchar(255) NOT NULL default '',
  `menuindex` int(11) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY  (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_menus`
-- 

INSERT INTO `sharnn_menus` VALUES ('site', '', 0, '', 'images/misc/logo_tbar.gif', 0, '', '', '');
INSERT INTO `sharnn_menus` VALUES ('preview', 'site', 0, 'preview_desc', 'images/icons/show.gif', 0, '', 'MODx.preview(); return false;', '');
INSERT INTO `sharnn_menus` VALUES ('refresh_site', 'site', 0, 'refresh_site_desc', 'images/icons/refresh.png', 1, '', 'MODx.clearCache(); return false;', 'empty_cache');
INSERT INTO `sharnn_menus` VALUES ('remove_locks', 'site', 0, 'remove_locks_desc', 'images/ext/default/grid/hmenu-unlock.png', 2, '', '\nMODx.msg.confirm({\n    title: _(''remove_locks'')\n    ,text: _(''confirm_remove_locks'')\n    ,url: MODx.config.connectors_url+''system/remove_locks.php''\n    ,params: {\n        action: ''remove''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { Ext.getCmp("modx-resource-tree").refresh(); },scope:this}\n    }\n});', 'remove_locks');
INSERT INTO `sharnn_menus` VALUES ('search', 'site', 47, 'search_desc', 'images/icons/context_view.gif', 3, '', '', 'search');
INSERT INTO `sharnn_menus` VALUES ('new_document', 'site', 48, 'new_document_desc', 'images/icons/folder_page_add.png', 4, '', '', 'new_document');
INSERT INTO `sharnn_menus` VALUES ('new_weblink', 'site', 48, 'new_weblink_desc', 'images/icons/link_add.png', 5, '&class_key=modWebLink', '', 'new_document');
INSERT INTO `sharnn_menus` VALUES ('new_symlink', 'site', 48, 'new_symlink_desc', 'images/icons/link_add.png', 6, '&class_key=modSymLink', '', 'new_document');
INSERT INTO `sharnn_menus` VALUES ('new_static_resource', 'site', 48, 'new_static_resource_desc', 'images/icons/link_add.png', 7, '&class_key=modStaticResource', '', 'new_document');
INSERT INTO `sharnn_menus` VALUES ('logout', 'site', 0, 'logout_desc', 'images/misc/logo_tbar.gif', 8, '', 'MODx.logout(); return false;', '');
INSERT INTO `sharnn_menus` VALUES ('components', '', 0, '', 'images/icons/plugin.gif', 1, '', '', 'components');
INSERT INTO `sharnn_menus` VALUES ('security', '', 0, '', 'images/icons/lock.gif', 2, '', '', 'access_permissions');
INSERT INTO `sharnn_menus` VALUES ('user_management', 'security', 49, 'user_management_desc', 'images/icons/user.gif', 0, '', '', 'view_user');
INSERT INTO `sharnn_menus` VALUES ('user_group_management', 'security', 50, 'user_group_management_desc', 'images/icons/mnu_users.gif', 1, '', '', 'access_permissions');
INSERT INTO `sharnn_menus` VALUES ('resource_groups', 'security', 51, 'resource_groups_desc', '', 2, '', '', 'access_permissions');
INSERT INTO `sharnn_menus` VALUES ('form_customization', 'security', 52, 'form_customization_desc', 'images/misc/logo_tbar.gif', 3, '', '', 'customize_forms');
INSERT INTO `sharnn_menus` VALUES ('flush_access', 'security', 0, 'flush_access_desc', 'images/icons/unzip.gif', 4, '', 'MODx.msg.confirm({\n    title: _(''flush_access'')\n    ,text: _(''flush_access_confirm'')\n    ,url: MODx.config.connectors_url+''security/access/index.php''\n    ,params: {\n        action: ''flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'access_permissions');
INSERT INTO `sharnn_menus` VALUES ('flush_sessions', 'security', 0, 'flush_sessions_desc', 'images/icons/unzip.gif', 5, '', 'MODx.msg.confirm({\n    title: _(''flush_sessions'')\n    ,text: _(''flush_sessions_confirm'')\n    ,url: MODx.config.connectors_url+''security/flush.php''\n    ,params: {\n        action: ''flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'flush_sessions');
INSERT INTO `sharnn_menus` VALUES ('tools', '', 0, '', 'images/icons/menu_settings.gif', 3, '', '', '');
INSERT INTO `sharnn_menus` VALUES ('import_resources', 'tools', 53, 'import_resources_desc', 'images/icons/application_side_contract.png', 0, '', '', 'import_static');
INSERT INTO `sharnn_menus` VALUES ('import_site', 'tools', 54, 'import_site_desc', 'images/icons/application_side_contract.png', 1, '', '', 'import_static');
INSERT INTO `sharnn_menus` VALUES ('propertysets', 'tools', 55, 'propertysets_desc', 'images/misc/logo_tbar.gif', 2, '', '', 'property_sets');
INSERT INTO `sharnn_menus` VALUES ('reports', '', 0, '', 'images/icons/menu_settings16.gif', 4, '', '', '');
INSERT INTO `sharnn_menus` VALUES ('site_schedule', 'reports', 56, 'site_schedule_desc', 'images/icons/cal.gif', 0, '', '', '');
INSERT INTO `sharnn_menus` VALUES ('view_logging', 'reports', 57, 'view_logging_desc', '', 1, '', '', 'logs');
INSERT INTO `sharnn_menus` VALUES ('eventlog_viewer', 'reports', 58, 'eventlog_viewer_desc', 'images/icons/comment.gif', 2, '', '', 'view_eventlog');
INSERT INTO `sharnn_menus` VALUES ('view_sysinfo', 'reports', 59, 'view_sysinfo_desc', 'images/icons/logging.gif', 3, '', '', 'view_sysinfo');
INSERT INTO `sharnn_menus` VALUES ('about', 'reports', 60, 'about_desc', 'images/icons/information.png', 4, '', '', 'about');
INSERT INTO `sharnn_menus` VALUES ('system', '', 0, '', 'images/misc/logo_tbar.gif', 5, '', '', '');
INSERT INTO `sharnn_menus` VALUES ('manage_workspaces', 'system', 61, 'manage_workspaces_desc', 'images/icons/sysinfo.gif', 0, '', '', 'packages');
INSERT INTO `sharnn_menus` VALUES ('system_settings', 'system', 62, 'system_settings_desc', 'images/icons/sysinfo.gif', 1, '', '', 'settings');
INSERT INTO `sharnn_menus` VALUES ('lexicon_management', 'system', 63, 'lexicon_management_desc', 'images/icons/logging.gif', 2, '', '', 'lexicons');
INSERT INTO `sharnn_menus` VALUES ('content_types', 'system', 64, 'content_types_desc', 'images/icons/logging.gif', 3, '', '', 'content_types');
INSERT INTO `sharnn_menus` VALUES ('contexts', 'system', 65, 'contexts_desc', 'images/icons/sysinfo.gif', 4, '', '', 'view_context');
INSERT INTO `sharnn_menus` VALUES ('edit_menu', 'system', 66, 'edit_menu_desc', 'images/icons/sysinfo.gif', 5, '', '', 'menus,actions');
INSERT INTO `sharnn_menus` VALUES ('namespaces', 'system', 67, 'namespaces_desc', '', 6, '', '', 'namespaces');
INSERT INTO `sharnn_menus` VALUES ('user', '', 0, '', 'images/icons/user_go.png', 6, '', '', '');
INSERT INTO `sharnn_menus` VALUES ('profile', 'user', 68, 'profile_desc', '', 0, '', '', '');
INSERT INTO `sharnn_menus` VALUES ('messages', 'user', 69, 'messages_desc', 'images/icons/messages.gif', 1, '', '', 'messages');
INSERT INTO `sharnn_menus` VALUES ('support', '', 0, 'support_desc', 'images/icons/sysinfo.gif', 7, '', '', '');
INSERT INTO `sharnn_menus` VALUES ('forums', 'support', 0, 'forums_desc', 'images/icons/sysinfo.gif', 0, '', 'window.open("http://modxcms.com/forums");', '');
INSERT INTO `sharnn_menus` VALUES ('wiki', 'support', 0, 'wiki_desc', 'images/icons/sysinfo.gif', 1, '', 'window.open("http://rtfm.modx.com/");', '');
INSERT INTO `sharnn_menus` VALUES ('jira', 'support', 0, 'jira_desc', 'images/icons/sysinfo.gif', 2, '', 'window.open("http://bugs.modx.com/projects/revo/issues");', '');
INSERT INTO `sharnn_menus` VALUES ('api_docs', 'support', 0, 'api_docs_desc', 'images/icons/sysinfo.gif', 3, '', 'window.open("http://api.modxcms.com/");', '');
INSERT INTO `sharnn_menus` VALUES ('gallery', 'components', 70, 'gallery.menu_desc', 'images/icons/plugin.gif', 0, '', '', '');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_namespaces`
-- 

CREATE TABLE `sharnn_namespaces` (
  `name` varchar(40) NOT NULL default '',
  `path` text,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_namespaces`
-- 

INSERT INTO `sharnn_namespaces` VALUES ('core', '{core_path}');
INSERT INTO `sharnn_namespaces` VALUES ('gallery', '{core_path}components/gallery/');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_property_set`
-- 

CREATE TABLE `sharnn_property_set` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `category` int(10) NOT NULL default '0',
  `description` varchar(255) NOT NULL default '',
  `properties` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_property_set`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_register_messages`
-- 

CREATE TABLE `sharnn_register_messages` (
  `topic` int(10) unsigned NOT NULL,
  `id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  `accesses` int(10) unsigned NOT NULL default '0',
  `expires` int(20) NOT NULL default '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_register_messages`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_register_queues`
-- 

CREATE TABLE `sharnn_register_queues` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `options` mediumtext,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_register_queues`
-- 

INSERT INTO `sharnn_register_queues` VALUES (1, 'locks', 'a:1:{s:9:"directory";s:5:"locks";}');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_register_topics`
-- 

CREATE TABLE `sharnn_register_topics` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `queue` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  `options` mediumtext,
  PRIMARY KEY  (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_register_topics`
-- 

INSERT INTO `sharnn_register_topics` VALUES (1, 1, '/resource/', '2011-04-03 21:36:40', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_session`
-- 

CREATE TABLE `sharnn_session` (
  `id` varchar(40) NOT NULL default '',
  `access` int(20) unsigned default NULL,
  `data` mediumtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_session`
-- 

INSERT INTO `sharnn_session` VALUES ('b2b380a549c116d657abe436573cf326', 1301862000, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.user..attributes|a:1:{s:3:"mgr";a:3:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}}}mgrDocgroups|a:0:{}usertype|s:7:"manager";mgrShortname|s:4:"chem";mgrFullname|s:18:"Default Admin User";mgrEmail|s:20:"chemeugene@gmail.com";mgrValidated|i:1;mgrInternalKey|i:1;mgrFailedlogins|i:0;mgrLastlogin|i:0;mgrLogincount|i:0;modx.mgr.session.cookie.lifetime|i:604800;ip|s:9:"127.0.0.1";modx.user.1.attributes|a:2:{s:3:"mgr";a:3:{s:16:"modAccessContext";a:2:{s:3:"mgr";a:1:{i:0;a:3:{s:9:"principal";s:1:"1";s:9:"authority";s:1:"0";s:6:"policy";a:126:{s:5:"about";b:1;s:18:"access_permissions";b:1;s:7:"actions";b:1;s:15:"change_password";b:1;s:14:"change_profile";b:1;s:8:"charsets";b:1;s:9:"class_map";b:1;s:10:"components";b:1;s:13:"content_types";b:1;s:9:"countries";b:1;s:6:"create";b:1;s:7:"credits";b:1;s:15:"customize_forms";b:1;s:8:"database";b:1;s:17:"database_truncate";b:1;s:15:"delete_category";b:1;s:12:"delete_chunk";b:1;s:14:"delete_context";b:1;s:15:"delete_document";b:1;s:15:"delete_eventlog";b:1;s:13:"delete_plugin";b:1;s:18:"delete_propertyset";b:1;s:14:"delete_snippet";b:1;s:15:"delete_template";b:1;s:9:"delete_tv";b:1;s:11:"delete_role";b:1;s:11:"delete_user";b:1;s:15:"directory_chmod";b:1;s:16:"directory_create";b:1;s:14:"directory_list";b:1;s:16:"directory_remove";b:1;s:16:"directory_update";b:1;s:13:"edit_category";b:1;s:10:"edit_chunk";b:1;s:12:"edit_context";b:1;s:13:"edit_document";b:1;s:11:"edit_locked";b:1;s:11:"edit_plugin";b:1;s:16:"edit_propertyset";b:1;s:9:"edit_role";b:1;s:12:"edit_snippet";b:1;s:13:"edit_template";b:1;s:7:"edit_tv";b:1;s:9:"edit_user";b:1;s:12:"element_tree";b:1;s:11:"empty_cache";b:1;s:15:"error_log_erase";b:1;s:14:"error_log_view";b:1;s:13:"export_static";b:1;s:9:"file_list";b:1;s:12:"file_manager";b:1;s:11:"file_remove";b:1;s:9:"file_tree";b:1;s:11:"file_update";b:1;s:11:"file_upload";b:1;s:9:"file_view";b:1;s:14:"flush_sessions";b:1;s:6:"frames";b:1;s:4:"help";b:1;s:4:"home";b:1;s:13:"import_static";b:1;s:9:"languages";b:1;s:8:"lexicons";b:1;s:4:"list";b:1;s:4:"load";b:1;s:6:"logout";b:1;s:4:"logs";b:1;s:5:"menus";b:1;s:8:"messages";b:1;s:10:"namespaces";b:1;s:12:"new_category";b:1;s:9:"new_chunk";b:1;s:11:"new_context";b:1;s:12:"new_document";b:1;s:20:"new_document_in_root";b:1;s:10:"new_plugin";b:1;s:15:"new_propertyset";b:1;s:8:"new_role";b:1;s:11:"new_snippet";b:1;s:12:"new_template";b:1;s:6:"new_tv";b:1;s:8:"new_user";b:1;s:8:"packages";b:1;s:13:"property_sets";b:1;s:9:"providers";b:1;s:16:"publish_document";b:1;s:13:"purge_deleted";b:1;s:6:"remove";b:1;s:12:"remove_locks";b:1;s:13:"resource_tree";b:1;s:4:"save";b:1;s:13:"save_category";b:1;s:10:"save_chunk";b:1;s:12:"save_context";b:1;s:13:"save_document";b:1;s:11:"save_plugin";b:1;s:16:"save_propertyset";b:1;s:9:"save_role";b:1;s:12:"save_snippet";b:1;s:13:"save_template";b:1;s:7:"save_tv";b:1;s:9:"save_user";b:1;s:6:"search";b:1;s:8:"settings";b:1;s:11:"steal_locks";b:1;s:17:"undelete_document";b:1;s:18:"unpublish_document";b:1;s:25:"unlock_element_properties";b:1;s:4:"view";b:1;s:13:"view_category";b:1;s:10:"view_chunk";b:1;s:12:"view_context";b:1;s:13:"view_document";b:1;s:12:"view_element";b:1;s:13:"view_eventlog";b:1;s:12:"view_offline";b:1;s:11:"view_plugin";b:1;s:16:"view_propertyset";b:1;s:9:"view_role";b:1;s:12:"view_snippet";b:1;s:12:"view_sysinfo";b:1;s:13:"view_template";b:1;s:7:"view_tv";b:1;s:9:"view_user";b:1;s:16:"view_unpublished";b:1;s:10:"workspaces";b:1;}}}s:3:"web";a:1:{i:0;a:3:{s:9:"principal";s:1:"1";s:9:"authority";s:1:"0";s:6:"policy";a:126:{s:5:"about";b:1;s:18:"access_permissions";b:1;s:7:"actions";b:1;s:15:"change_password";b:1;s:14:"change_profile";b:1;s:8:"charsets";b:1;s:9:"class_map";b:1;s:10:"components";b:1;s:13:"content_types";b:1;s:9:"countries";b:1;s:6:"create";b:1;s:7:"credits";b:1;s:15:"customize_forms";b:1;s:8:"database";b:1;s:17:"database_truncate";b:1;s:15:"delete_category";b:1;s:12:"delete_chunk";b:1;s:14:"delete_context";b:1;s:15:"delete_document";b:1;s:15:"delete_eventlog";b:1;s:13:"delete_plugin";b:1;s:18:"delete_propertyset";b:1;s:14:"delete_snippet";b:1;s:15:"delete_template";b:1;s:9:"delete_tv";b:1;s:11:"delete_role";b:1;s:11:"delete_user";b:1;s:15:"directory_chmod";b:1;s:16:"directory_create";b:1;s:14:"directory_list";b:1;s:16:"directory_remove";b:1;s:16:"directory_update";b:1;s:13:"edit_category";b:1;s:10:"edit_chunk";b:1;s:12:"edit_context";b:1;s:13:"edit_document";b:1;s:11:"edit_locked";b:1;s:11:"edit_plugin";b:1;s:16:"edit_propertyset";b:1;s:9:"edit_role";b:1;s:12:"edit_snippet";b:1;s:13:"edit_template";b:1;s:7:"edit_tv";b:1;s:9:"edit_user";b:1;s:12:"element_tree";b:1;s:11:"empty_cache";b:1;s:15:"error_log_erase";b:1;s:14:"error_log_view";b:1;s:13:"export_static";b:1;s:9:"file_list";b:1;s:12:"file_manager";b:1;s:11:"file_remove";b:1;s:9:"file_tree";b:1;s:11:"file_update";b:1;s:11:"file_upload";b:1;s:9:"file_view";b:1;s:14:"flush_sessions";b:1;s:6:"frames";b:1;s:4:"help";b:1;s:4:"home";b:1;s:13:"import_static";b:1;s:9:"languages";b:1;s:8:"lexicons";b:1;s:4:"list";b:1;s:4:"load";b:1;s:6:"logout";b:1;s:4:"logs";b:1;s:5:"menus";b:1;s:8:"messages";b:1;s:10:"namespaces";b:1;s:12:"new_category";b:1;s:9:"new_chunk";b:1;s:11:"new_context";b:1;s:12:"new_document";b:1;s:20:"new_document_in_root";b:1;s:10:"new_plugin";b:1;s:15:"new_propertyset";b:1;s:8:"new_role";b:1;s:11:"new_snippet";b:1;s:12:"new_template";b:1;s:6:"new_tv";b:1;s:8:"new_user";b:1;s:8:"packages";b:1;s:13:"property_sets";b:1;s:9:"providers";b:1;s:16:"publish_document";b:1;s:13:"purge_deleted";b:1;s:6:"remove";b:1;s:12:"remove_locks";b:1;s:13:"resource_tree";b:1;s:4:"save";b:1;s:13:"save_category";b:1;s:10:"save_chunk";b:1;s:12:"save_context";b:1;s:13:"save_document";b:1;s:11:"save_plugin";b:1;s:16:"save_propertyset";b:1;s:9:"save_role";b:1;s:12:"save_snippet";b:1;s:13:"save_template";b:1;s:7:"save_tv";b:1;s:9:"save_user";b:1;s:6:"search";b:1;s:8:"settings";b:1;s:11:"steal_locks";b:1;s:17:"undelete_document";b:1;s:18:"unpublish_document";b:1;s:25:"unlock_element_properties";b:1;s:4:"view";b:1;s:13:"view_category";b:1;s:10:"view_chunk";b:1;s:12:"view_context";b:1;s:13:"view_document";b:1;s:12:"view_element";b:1;s:13:"view_eventlog";b:1;s:12:"view_offline";b:1;s:11:"view_plugin";b:1;s:16:"view_propertyset";b:1;s:9:"view_role";b:1;s:12:"view_snippet";b:1;s:12:"view_sysinfo";b:1;s:13:"view_template";b:1;s:7:"view_tv";b:1;s:9:"view_user";b:1;s:16:"view_unpublished";b:1;s:10:"workspaces";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}}s:3:"web";a:3:{s:16:"modAccessContext";a:2:{s:3:"mgr";a:1:{i:0;a:3:{s:9:"principal";s:1:"1";s:9:"authority";s:1:"0";s:6:"policy";a:126:{s:5:"about";b:1;s:18:"access_permissions";b:1;s:7:"actions";b:1;s:15:"change_password";b:1;s:14:"change_profile";b:1;s:8:"charsets";b:1;s:9:"class_map";b:1;s:10:"components";b:1;s:13:"content_types";b:1;s:9:"countries";b:1;s:6:"create";b:1;s:7:"credits";b:1;s:15:"customize_forms";b:1;s:8:"database";b:1;s:17:"database_truncate";b:1;s:15:"delete_category";b:1;s:12:"delete_chunk";b:1;s:14:"delete_context";b:1;s:15:"delete_document";b:1;s:15:"delete_eventlog";b:1;s:13:"delete_plugin";b:1;s:18:"delete_propertyset";b:1;s:14:"delete_snippet";b:1;s:15:"delete_template";b:1;s:9:"delete_tv";b:1;s:11:"delete_role";b:1;s:11:"delete_user";b:1;s:15:"directory_chmod";b:1;s:16:"directory_create";b:1;s:14:"directory_list";b:1;s:16:"directory_remove";b:1;s:16:"directory_update";b:1;s:13:"edit_category";b:1;s:10:"edit_chunk";b:1;s:12:"edit_context";b:1;s:13:"edit_document";b:1;s:11:"edit_locked";b:1;s:11:"edit_plugin";b:1;s:16:"edit_propertyset";b:1;s:9:"edit_role";b:1;s:12:"edit_snippet";b:1;s:13:"edit_template";b:1;s:7:"edit_tv";b:1;s:9:"edit_user";b:1;s:12:"element_tree";b:1;s:11:"empty_cache";b:1;s:15:"error_log_erase";b:1;s:14:"error_log_view";b:1;s:13:"export_static";b:1;s:9:"file_list";b:1;s:12:"file_manager";b:1;s:11:"file_remove";b:1;s:9:"file_tree";b:1;s:11:"file_update";b:1;s:11:"file_upload";b:1;s:9:"file_view";b:1;s:14:"flush_sessions";b:1;s:6:"frames";b:1;s:4:"help";b:1;s:4:"home";b:1;s:13:"import_static";b:1;s:9:"languages";b:1;s:8:"lexicons";b:1;s:4:"list";b:1;s:4:"load";b:1;s:6:"logout";b:1;s:4:"logs";b:1;s:5:"menus";b:1;s:8:"messages";b:1;s:10:"namespaces";b:1;s:12:"new_category";b:1;s:9:"new_chunk";b:1;s:11:"new_context";b:1;s:12:"new_document";b:1;s:20:"new_document_in_root";b:1;s:10:"new_plugin";b:1;s:15:"new_propertyset";b:1;s:8:"new_role";b:1;s:11:"new_snippet";b:1;s:12:"new_template";b:1;s:6:"new_tv";b:1;s:8:"new_user";b:1;s:8:"packages";b:1;s:13:"property_sets";b:1;s:9:"providers";b:1;s:16:"publish_document";b:1;s:13:"purge_deleted";b:1;s:6:"remove";b:1;s:12:"remove_locks";b:1;s:13:"resource_tree";b:1;s:4:"save";b:1;s:13:"save_category";b:1;s:10:"save_chunk";b:1;s:12:"save_context";b:1;s:13:"save_document";b:1;s:11:"save_plugin";b:1;s:16:"save_propertyset";b:1;s:9:"save_role";b:1;s:12:"save_snippet";b:1;s:13:"save_template";b:1;s:7:"save_tv";b:1;s:9:"save_user";b:1;s:6:"search";b:1;s:8:"settings";b:1;s:11:"steal_locks";b:1;s:17:"undelete_document";b:1;s:18:"unpublish_document";b:1;s:25:"unlock_element_properties";b:1;s:4:"view";b:1;s:13:"view_category";b:1;s:10:"view_chunk";b:1;s:12:"view_context";b:1;s:13:"view_document";b:1;s:12:"view_element";b:1;s:13:"view_eventlog";b:1;s:12:"view_offline";b:1;s:11:"view_plugin";b:1;s:16:"view_propertyset";b:1;s:9:"view_role";b:1;s:12:"view_snippet";b:1;s:12:"view_sysinfo";b:1;s:13:"view_template";b:1;s:7:"view_tv";b:1;s:9:"view_user";b:1;s:16:"view_unpublished";b:1;s:10:"workspaces";b:1;}}}s:3:"web";a:1:{i:0;a:3:{s:9:"principal";s:1:"1";s:9:"authority";s:1:"0";s:6:"policy";a:126:{s:5:"about";b:1;s:18:"access_permissions";b:1;s:7:"actions";b:1;s:15:"change_password";b:1;s:14:"change_profile";b:1;s:8:"charsets";b:1;s:9:"class_map";b:1;s:10:"components";b:1;s:13:"content_types";b:1;s:9:"countries";b:1;s:6:"create";b:1;s:7:"credits";b:1;s:15:"customize_forms";b:1;s:8:"database";b:1;s:17:"database_truncate";b:1;s:15:"delete_category";b:1;s:12:"delete_chunk";b:1;s:14:"delete_context";b:1;s:15:"delete_document";b:1;s:15:"delete_eventlog";b:1;s:13:"delete_plugin";b:1;s:18:"delete_propertyset";b:1;s:14:"delete_snippet";b:1;s:15:"delete_template";b:1;s:9:"delete_tv";b:1;s:11:"delete_role";b:1;s:11:"delete_user";b:1;s:15:"directory_chmod";b:1;s:16:"directory_create";b:1;s:14:"directory_list";b:1;s:16:"directory_remove";b:1;s:16:"directory_update";b:1;s:13:"edit_category";b:1;s:10:"edit_chunk";b:1;s:12:"edit_context";b:1;s:13:"edit_document";b:1;s:11:"edit_locked";b:1;s:11:"edit_plugin";b:1;s:16:"edit_propertyset";b:1;s:9:"edit_role";b:1;s:12:"edit_snippet";b:1;s:13:"edit_template";b:1;s:7:"edit_tv";b:1;s:9:"edit_user";b:1;s:12:"element_tree";b:1;s:11:"empty_cache";b:1;s:15:"error_log_erase";b:1;s:14:"error_log_view";b:1;s:13:"export_static";b:1;s:9:"file_list";b:1;s:12:"file_manager";b:1;s:11:"file_remove";b:1;s:9:"file_tree";b:1;s:11:"file_update";b:1;s:11:"file_upload";b:1;s:9:"file_view";b:1;s:14:"flush_sessions";b:1;s:6:"frames";b:1;s:4:"help";b:1;s:4:"home";b:1;s:13:"import_static";b:1;s:9:"languages";b:1;s:8:"lexicons";b:1;s:4:"list";b:1;s:4:"load";b:1;s:6:"logout";b:1;s:4:"logs";b:1;s:5:"menus";b:1;s:8:"messages";b:1;s:10:"namespaces";b:1;s:12:"new_category";b:1;s:9:"new_chunk";b:1;s:11:"new_context";b:1;s:12:"new_document";b:1;s:20:"new_document_in_root";b:1;s:10:"new_plugin";b:1;s:15:"new_propertyset";b:1;s:8:"new_role";b:1;s:11:"new_snippet";b:1;s:12:"new_template";b:1;s:6:"new_tv";b:1;s:8:"new_user";b:1;s:8:"packages";b:1;s:13:"property_sets";b:1;s:9:"providers";b:1;s:16:"publish_document";b:1;s:13:"purge_deleted";b:1;s:6:"remove";b:1;s:12:"remove_locks";b:1;s:13:"resource_tree";b:1;s:4:"save";b:1;s:13:"save_category";b:1;s:10:"save_chunk";b:1;s:12:"save_context";b:1;s:13:"save_document";b:1;s:11:"save_plugin";b:1;s:16:"save_propertyset";b:1;s:9:"save_role";b:1;s:12:"save_snippet";b:1;s:13:"save_template";b:1;s:7:"save_tv";b:1;s:9:"save_user";b:1;s:6:"search";b:1;s:8:"settings";b:1;s:11:"steal_locks";b:1;s:17:"undelete_document";b:1;s:18:"unpublish_document";b:1;s:25:"unlock_element_properties";b:1;s:4:"view";b:1;s:13:"view_category";b:1;s:10:"view_chunk";b:1;s:12:"view_context";b:1;s:13:"view_document";b:1;s:12:"view_element";b:1;s:13:"view_eventlog";b:1;s:12:"view_offline";b:1;s:11:"view_plugin";b:1;s:16:"view_propertyset";b:1;s:9:"view_role";b:1;s:12:"view_snippet";b:1;s:12:"view_sysinfo";b:1;s:13:"view_template";b:1;s:7:"view_tv";b:1;s:9:"view_user";b:1;s:16:"view_unpublished";b:1;s:10:"workspaces";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}}}mgrConfigCheck|b:1;modx.user.1.userGroups|a:1:{i:0;i:1;}webDocgroups|a:0:{}');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_content`
-- 

CREATE TABLE `sharnn_site_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(20) NOT NULL default 'document',
  `contentType` varchar(50) NOT NULL default 'text/html',
  `pagetitle` varchar(255) NOT NULL default '',
  `longtitle` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `alias` varchar(255) default '',
  `link_attributes` varchar(255) NOT NULL default '',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `pub_date` int(20) NOT NULL default '0',
  `unpub_date` int(20) NOT NULL default '0',
  `parent` int(10) NOT NULL default '0',
  `isfolder` tinyint(1) unsigned NOT NULL default '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) unsigned NOT NULL default '1',
  `template` int(10) NOT NULL default '0',
  `menuindex` int(10) NOT NULL default '0',
  `searchable` tinyint(1) unsigned NOT NULL default '1',
  `cacheable` tinyint(1) unsigned NOT NULL default '1',
  `createdby` int(10) NOT NULL default '0',
  `createdon` int(20) NOT NULL default '0',
  `editedby` int(10) NOT NULL default '0',
  `editedon` int(20) NOT NULL default '0',
  `deleted` tinyint(1) unsigned NOT NULL default '0',
  `deletedon` int(20) NOT NULL default '0',
  `deletedby` int(10) NOT NULL default '0',
  `publishedon` int(20) NOT NULL default '0',
  `publishedby` int(10) NOT NULL default '0',
  `menutitle` varchar(255) NOT NULL default '',
  `donthit` tinyint(1) unsigned NOT NULL default '0',
  `haskeywords` tinyint(1) unsigned NOT NULL default '0',
  `hasmetatags` tinyint(1) unsigned NOT NULL default '0',
  `privateweb` tinyint(1) unsigned NOT NULL default '0',
  `privatemgr` tinyint(1) unsigned NOT NULL default '0',
  `content_dispo` tinyint(1) NOT NULL default '0',
  `hidemenu` tinyint(1) NOT NULL default '0',
  `class_key` varchar(100) NOT NULL default 'modDocument',
  `context_key` varchar(100) NOT NULL default 'web',
  `content_type` int(11) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_site_content`
-- 

INSERT INTO `sharnn_site_content` VALUES (1, 'document', 'text/html', 'Корпорация развлечений', '', 'Главная страница компании Корпорация развлечений', '', '', 1, 0, 0, 0, 0, '', 'Это содержание главной страницы\r\n<br/>\r\n\r\n<!--<div style="float: right">\r\n<h2>Galleries</h2>\r\n<ul>\r\n[[!GalleryAlbums]]\r\n</ul>\r\n</div>-->\r\n \r\n[[!Gallery? &album=`Воздушные шары` &toPlaceholder=`gallery` &=thumbTpl=`DemoGalItemThumb` &imageWidth=`510` &imageHeight=`510`]]\r\n<!--<h1><a href="[[~[[*id]] &galAlbum=`[[+gallery.id]]`]]">[[+gallery.name]]</a></h1>-->\r\n<!--<p>[[+gallery.description]]</p>-->\r\n \r\n[[+gallery]]', 1, 1, 0, 1, 1, 1, 1301851580, 1, 1301861945, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 'modDocument', 'web', 1);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_content_metatags`
-- 

CREATE TABLE `sharnn_site_content_metatags` (
  `content_id` int(11) NOT NULL default '0',
  `metatag_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`,`metatag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_site_content_metatags`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_htmlsnippets`
-- 

CREATE TABLE `sharnn_site_htmlsnippets` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default 'Chunk',
  `editor_type` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `cache_type` tinyint(1) NOT NULL default '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL default '0',
  `properties` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Дамп данных таблицы `sharnn_site_htmlsnippets`
-- 

INSERT INTO `sharnn_site_htmlsnippets` VALUES (1, 'galAlbumRowTpl', '', 0, 1, 0, '<li[[+cls:notempty=` class="[[+cls]]"`]]><a href="[[~[[*id]]? &[[+albumRequestVar]]=`[[+id]]`]]">[[+showName:notempty=`[[+name]]`]]</a></li>', 0, '');
INSERT INTO `sharnn_site_htmlsnippets` VALUES (2, 'galItemThumb', '', 0, 1, 0, '<div class="[[+cls]]">\n    <a href="[[+linkToImage:if=`[[+linkToImage]]`:is=`1`:then=`[[+image_absolute]]`:else=`[[~[[*id]]?\n            &[[+imageGetParam]]=`[[+id]]`\n            &[[+albumRequestVar]]=`[[+album]]`\n            &[[+tagRequestVar]]=`[[+tag]]` ]]`]]">\n\n        <img class="[[+imgCls]]" src="[[+thumbnail]]" alt="[[+name]]" />\n    </a>\n</div>', 0, 'a:0:{}');
INSERT INTO `sharnn_site_htmlsnippets` VALUES (3, 'DemoGalAlbumRowTpl', '', 0, 1, 0, '<strong><div class="albumPreview">\n    <h3><a href="[[~[[*id]]? &[[+albumRequestVar]]=`[[+id]]`]]">[[+name]]</a></h3>\n    <div class="thumb">\n        <a href="[[~[[*id]]? &[[+albumRequestVar]]=`[[+id]]`]]"><img src="[[+image]]" alt="[[+name]]"/></a>\n    </div>\n    <div class="desc">\n        <p>[[+description]]</p>\n        <a href="[[~[[*id]]? &[[+albumRequestVar]]=`[[+id]]`]]" class="view">View gallery</a>\n    </div>\n</div></strong>', 0, 'a:0:{}');
INSERT INTO `sharnn_site_htmlsnippets` VALUES (4, 'DemoGalItemThumb', '', 0, 1, 0, '<div class="[[+cls]]">\n    <a rel="galery1" href="[[+image]]" rel="colorbox" title="[[+description]]">\n    	<img class="[[+imgCls]]" src="[[+thumbnail]]" alt="[[+name]]" />\n    </a>\n</div>\n', 0, 'a:0:{}');
INSERT INTO `sharnn_site_htmlsnippets` VALUES (5, 'DemoGalleryAlbumTpl', '', 0, 1, 0, '<h1>[[+album_name]]</h1>\n<p>[[+album_description]]</p>\n[[+thumbnails]]\n', 0, 'a:0:{}');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_keywords`
-- 

CREATE TABLE `sharnn_site_keywords` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `keyword` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_site_keywords`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_metatags`
-- 

CREATE TABLE `sharnn_site_metatags` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `tag` varchar(50) NOT NULL default '',
  `tagvalue` varchar(255) NOT NULL default '',
  `http_equiv` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_site_metatags`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_plugin_events`
-- 

CREATE TABLE `sharnn_site_plugin_events` (
  `pluginid` int(10) NOT NULL default '0',
  `event` varchar(255) NOT NULL default '',
  `priority` int(10) NOT NULL default '0',
  `propertyset` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_site_plugin_events`
-- 

INSERT INTO `sharnn_site_plugin_events` VALUES (1, 'OnTVInputRenderList', 0, 0);
INSERT INTO `sharnn_site_plugin_events` VALUES (1, 'OnTVOutputRenderList', 0, 0);
INSERT INTO `sharnn_site_plugin_events` VALUES (1, 'OnTVOutputRenderPropertiesList', 0, 0);
INSERT INTO `sharnn_site_plugin_events` VALUES (1, 'OnDocFormPrerender', 0, 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_plugins`
-- 

CREATE TABLE `sharnn_site_plugins` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `editor_type` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `cache_type` tinyint(1) NOT NULL default '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL default '0',
  `properties` text,
  `disabled` tinyint(1) unsigned NOT NULL default '0',
  `moduleguid` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_site_plugins`
-- 

INSERT INTO `sharnn_site_plugins` VALUES (1, 'GalleryCustomTV', '', 0, 0, 0, '/**\n * Handles plugin events for Gallery''s Custom TV\n * \n * @package gallery\n */\n$corePath = $modx->getOption(''gallery.core_path'',null,$modx->getOption(''core_path'').''components/gallery/'');\nswitch ($modx->event->name) {\n    case ''OnTVInputRenderList'':\n        $modx->event->output($corePath.''elements/tv/input/'');\n        break;\n    case ''OnTVOutputRenderList'':\n        $modx->event->output($corePath.''elements/tv/output/'');\n        break;\n    case ''OnTVOutputRenderPropertiesList'':\n        $modx->event->output($corePath.''elements/tv/properties/'');\n        break;\n    case ''OnDocFormPrerender'':\n        $gallery = $modx->getService(''gallery'',''Gallery'',$modx->getOption(''gallery.core_path'',null,$modx->getOption(''core_path'').''components/gallery/'').''model/gallery/'',$scriptProperties);\n        if (!($gallery instanceof Gallery)) return '''';\n\n        /* assign gallery lang to JS */\n        $modx->response->addLangTopic(''gallery:tv'');\n\n        /* get gallery action */\n        $action = $modx->getObject(''modAction'',array(\n            ''namespace'' => ''gallery'',\n            ''controller'' => ''index'',\n        ));\n        $modx->regClientStartupHTMLBlock(''<script type="text/javascript">\n        Ext.onReady(function() {\n            GAL.config = {};\n            GAL.config.connector_url = "''.$gallery->config[''connectorUrl''].''";\n            GAL.action = "''.($action ? $action->get(''id'') : 0).''";\n        });\n        </script>'');\n        $modx->regClientStartupScript($gallery->config[''assetsUrl''].''js/mgr/tv/Spotlight.js'');\n        $modx->regClientStartupScript($gallery->config[''assetsUrl''].''js/mgr/gallery.js'');\n        $modx->regClientStartupScript($gallery->config[''assetsUrl''].''js/mgr/widgets/album/album.items.view.js'');\n        $modx->regClientStartupScript($gallery->config[''assetsUrl''].''js/mgr/widgets/album/album.tree.js'');\n        $modx->regClientStartupScript($gallery->config[''assetsUrl''].''js/mgr/tv/gal.browser.js'');\n        $modx->regClientStartupScript($gallery->config[''assetsUrl''].''js/mgr/tv/galtv.js'');\n        $modx->regClientCSS($gallery->config[''cssUrl''].''mgr.css'');\n        break;\n}\nreturn;', 0, NULL, 0, '');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_snippets`
-- 

CREATE TABLE `sharnn_site_snippets` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `editor_type` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `cache_type` tinyint(1) NOT NULL default '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL default '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Дамп данных таблицы `sharnn_site_snippets`
-- 

INSERT INTO `sharnn_site_snippets` VALUES (1, 'Gallery', '', 0, 1, 0, '/**\n * Gallery\n *\n * Copyright 2010-2011 by Shaun McCormick <shaun@modx.com>\n *\n * Gallery is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Gallery is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Gallery; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package gallery\n */\n/**\n * The main Gallery snippet.\n *\n * @package gallery\n */\n$gallery = $modx->getService(''gallery'',''Gallery'',$modx->getOption(''gallery.core_path'',null,$modx->getOption(''core_path'').''components/gallery/'').''model/gallery/'',$scriptProperties);\nif (!($gallery instanceof Gallery)) return '''';\n$modx->lexicon->load(''gallery:web'');\n\n/* setup default properties */\n$album = $modx->getOption(''album'',$scriptProperties,false);\n$plugin = $modx->getOption(''plugin'',$scriptProperties,'''');\n$tag = $modx->getOption(''tag'',$scriptProperties,'''');\n$limit = $modx->getOption(''limit'',$scriptProperties,0);\n$start = $modx->getOption(''start'',$scriptProperties,0);\n$sort = $modx->getOption(''sort'',$scriptProperties,''rank'');\n$sortAlias = $modx->getOption(''sortAlias'',$scriptProperties,''galItem'');\nif ($sort == ''rank'') $sortAlias = ''AlbumItems'';\n$dir = $modx->getOption(''dir'',$scriptProperties,''ASC'');\n$showInactive = $modx->getOption(''showInactive'',$scriptProperties,false);\n$linkToImage = $modx->getOption(''linkToImage'',$scriptProperties,false);\n$imageGetParam = $modx->getOption(''imageGetParam'',$scriptProperties,''galItem'');\n$albumRequestVar = $modx->getOption(''albumRequestVar'',$scriptProperties,''galAlbum'');\n$tagRequestVar = $modx->getOption(''tagRequestVar'',$scriptProperties,''galTag'');\n$itemCls = $modx->getOption(''itemCls'',$scriptProperties,''gal-item'');\n\n/* check for REQUEST vars if property set */\nif ($modx->getOption(''checkForRequestAlbumVar'',$scriptProperties,true)) {\n    if (!empty($_REQUEST[$albumRequestVar])) $album = $_REQUEST[$albumRequestVar];\n}\nif ($modx->getOption(''checkForRequestTagVar'',$scriptProperties,true)) {\n    if (!empty($_REQUEST[$tagRequestVar])) $tag = $_REQUEST[$tagRequestVar];\n}\nif (empty($album) && empty($tag)) return '''';\n\n/* build query */\n$tagc = $modx->newQuery(''galTag'');\n$tagc->setClassAlias(''TagsJoin'');\n$tagc->select(''GROUP_CONCAT(''.$modx->getSelectColumns(''galTag'',''TagsJoin'','''',array(''tag'')).'')'');\n$tagc->where($modx->getSelectColumns(''galTag'',''TagsJoin'','''',array(''item'')).'' = ''.$modx->getSelectColumns(''galItem'',''galItem'','''',array(''id'')));\n$tagc->prepare();\n$tagSql = $tagc->toSql();\n\n$c = $modx->newQuery(''galItem'');\n$c->innerJoin(''galAlbumItem'',''AlbumItems'');\n$c->innerJoin(''galAlbum'',''Album'',$modx->getSelectColumns(''galAlbumItem'',''AlbumItems'','''',array(''album'')).'' = ''.$modx->getSelectColumns(''galAlbum'',''Album'','''',array(''id'')));\n\n/* pull by album */\nif (!empty($album)) {\n    $albumField = is_numeric($album) ? ''id'' : ''name'';\n\n    $albumWhere = $albumField == ''name'' ? array(''name'' => $album) : $album;\n    $album = $modx->getObject(''galAlbum'',$albumWhere);\n    if (empty($album)) return '''';\n    $c->where(array(\n        ''Album.''.$albumField => $album->get($albumField),\n    ));\n    $galleryId = $album->get(''id'');\n    $galleryName = $album->get(''name'');\n    $galleryDescription = $album->get(''description'');\n    unset($albumWhere,$albumField);\n}\nif (!empty($tag)) { /* pull by tag */\n    $c->innerJoin(''galTag'',''Tags'');\n    $c->where(array(\n        ''Tags.tag'' => $tag,\n    ));\n    if (empty($album)) {\n        $galleryId = 0;\n        $galleryName = $tag;\n        $galleryDescription = '''';\n    }\n}\n$c->where(array(\n    ''galItem.mediatype'' => $modx->getOption(''mediatype'',$scriptProperties,''image''),\n));\nif (!$showInactive) {\n    $c->where(array(\n        ''galItem.active'' => true,\n    ));\n}\n\n$count = $modx->getCount(''galItem'',$c);\n$c->select(array(''galItem.*''));\n$c->select(array(\n    ''(''.$tagSql.'') AS `tags`''\n));\nif (strcasecmp($sort,''rand'')==0) {\n    $c->sortby(''RAND()'',$dir);\n} else {\n    $c->sortby($sortAlias.''.''.$sort,$dir);\n}\nif (!empty($limit)) $c->limit($limit,$start);\n$items = $modx->getCollection(''galItem'',$c);\n\n/* load plugins */\nif (!empty($plugin)) {\n    $pluginPath = $modx->getOption(''pluginPath'',$scriptProperties,'''');\n    if (empty($pluginPath)) {\n        $pluginPath = $gallery->config[''modelPath''].''gallery/plugins/'';\n    }\n    if (($className = $modx->loadClass($plugin,$pluginPath,true,true))) {\n        $plugin = new $className($gallery,$scriptProperties);\n        $plugin->load();\n        $scriptProperties = $plugin->adjustSettings($scriptProperties);\n    } else {\n        return $modx->lexicon(''gallery.plugin_err_load'',array(''name'' => $plugin,''path'' => $pluginPath));\n    }\n} else {\n    if ($modx->getOption(''useCss'',$scriptProperties,true)) {\n        $modx->regClientCSS($gallery->config[''cssUrl''].''web.css'');\n    }\n}\n\n/* iterate */\n$output = '''';\n\n$imageProperties = $modx->getOption(''imageProperties'',$scriptProperties,'''');\n$imageProperties = !empty($imageProperties) ? $modx->fromJSON($imageProperties) : array();\n$imageProperties = array_merge(array(\n    ''w'' => (int)$modx->getOption(''imageWidth'',$scriptProperties,500),\n    ''h'' => (int)$modx->getOption(''imageHeight'',$scriptProperties,500),\n    ''zc'' => (boolean)$modx->getOption(''imageZoomCrop'',$scriptProperties,0),\n    ''far'' => (string)$modx->getOption(''imageFar'',$scriptProperties,false),\n    ''q'' => (int)$modx->getOption(''imageQuality'',$scriptProperties,90),\n),$imageProperties);\n\n$thumbProperties = $modx->getOption(''thumbProperties'',$scriptProperties,'''');\n$thumbProperties = !empty($thumbProperties) ? $modx->fromJSON($thumbProperties) : array();\n$thumbProperties = array_merge(array(\n    ''w'' => (int)$modx->getOption(''thumbWidth'',$scriptProperties,100),\n    ''h'' => (int)$modx->getOption(''thumbHeight'',$scriptProperties,100),\n    ''zc'' => (boolean)$modx->getOption(''thumbZoomCrop'',$scriptProperties,1),\n    ''far'' => (string)$modx->getOption(''thumbFar'',$scriptProperties,''C''),\n    ''q'' => (int)$modx->getOption(''thumbQuality'',$scriptProperties,90),\n),$thumbProperties);\n\n$idx = 0;\nforeach ($items as $item) {\n    $itemArray = $item->toArray();\n    $itemArray[''idx''] = $idx;\n    $itemArray[''cls''] = $itemCls;\n    $itemArray[''filename''] = basename($item->get(''filename''));\n    $itemArray[''image_absolute''] = $modx->getOption(''gallery.files_url'').$item->get(''filename'');\n    $itemArray[''fileurl''] = $itemArray[''image_absolute''];\n    $itemArray[''filepath''] = $modx->getOption(''gallery.files_path'').$item->get(''filename'');\n    $itemArray[''filesize''] = $item->get(''filesize'');\n    $itemArray[''thumbnail''] = $item->get(''thumbnail'',$thumbProperties);\n    $itemArray[''image''] = $item->get(''thumbnail'',$imageProperties);\n    if (!empty($album)) $itemArray[''album''] = $album->get(''id'');\n    if (!empty($tag)) $itemArray[''tag''] = $tag;\n    $itemArray[''linkToImage''] = $linkToImage;\n    $itemArray[''imageGetParam''] = $imageGetParam;\n    $itemArray[''albumRequestVar''] = $albumRequestVar;\n    $itemArray[''tagRequestVar''] = $tagRequestVar;\n    $itemArray[''tag''] = '''';\n\n    $output .= $gallery->getChunk($modx->getOption(''thumbTpl'',$scriptProperties,''galItemThumb''),$itemArray);\n    $idx++;\n}\n\n/* if set, place in a container tpl */\n$containerTpl = $modx->getOption(''containerTpl'',$scriptProperties,false);\nif (!empty($containerTpl)) {\n    $ct = $gallery->getChunk($containerTpl,array(\n        ''thumbnails'' => $output,\n        ''album_name'' => $galleryName,\n        ''album_description'' => $galleryDescription,\n    ));\n    if (!empty($ct)) $output = $ct;\n}\n\n/* set to placeholders or output directly */\n$toPlaceholder = $modx->getOption(''toPlaceholder'',$scriptProperties,false);\nif (!empty($toPlaceholder)) {\n    $modx->toPlaceholders(array(\n        $toPlaceholder => $output,\n        $toPlaceholder.''.id'' => $galleryId,\n        $toPlaceholder.''.name'' => $galleryName,\n        $toPlaceholder.''.description'' => $galleryDescription,\n        $toPlaceholder.''.total'' => $count,\n    ));\n} else {\n    $placeholderPrefix = $modx->getOption(''placeholderPrefix'',$scriptProperties,''gallery.'');\n    $modx->toPlaceholders(array(\n        $placeholderPrefix.''id'' => $galleryId,\n        $placeholderPrefix.''name'' => $galleryName,\n        $placeholderPrefix.''description'' => $galleryDescription,\n        $placeholderPrefix.''total'' => $count,\n    ));\n    return $output;\n}\nreturn '''';', 0, 'a:32:{s:5:"album";a:6:{s:4:"name";s:5:"album";s:4:"desc";s:18:"gallery.album_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:3:"tag";a:6:{s:4:"name";s:3:"tag";s:4:"desc";s:16:"gallery.tag_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:6:"plugin";a:6:{s:4:"name";s:6:"plugin";s:4:"desc";s:19:"gallery.plugin_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:10:"pluginPath";a:6:{s:4:"name";s:10:"pluginPath";s:4:"desc";s:23:"gallery.pluginpath_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:8:"thumbTpl";a:6:{s:4:"name";s:8:"thumbTpl";s:4:"desc";s:21:"gallery.thumbtpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:12:"galItemThumb";s:7:"lexicon";s:18:"gallery:properties";}s:12:"containerTpl";a:6:{s:4:"name";s:12:"containerTpl";s:4:"desc";s:25:"gallery.containertpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:7:"itemCls";a:6:{s:4:"name";s:7:"itemCls";s:4:"desc";s:20:"gallery.itemcls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"gal-item";s:7:"lexicon";s:18:"gallery:properties";}s:13:"toPlaceholder";a:6:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:26:"gallery.toplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:10:"thumbWidth";a:6:{s:4:"name";s:10:"thumbWidth";s:4:"desc";s:23:"gallery.thumbwidth_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"100";s:7:"lexicon";s:18:"gallery:properties";}s:11:"thumbHeight";a:6:{s:4:"name";s:11:"thumbHeight";s:4:"desc";s:24:"gallery.thumbheight_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"100";s:7:"lexicon";s:18:"gallery:properties";}s:13:"thumbZoomCrop";a:6:{s:4:"name";s:13:"thumbZoomCrop";s:4:"desc";s:26:"gallery.thumbzoomcrop_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:18:"gallery:properties";}s:8:"thumbFar";a:6:{s:4:"name";s:8:"thumbFar";s:4:"desc";s:21:"gallery.thumbfar_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";s:1:"C";s:7:"lexicon";s:18:"gallery:properties";}s:12:"thumbQuality";a:6:{s:4:"name";s:12:"thumbQuality";s:4:"desc";s:25:"gallery.thumbquality_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:90;s:7:"lexicon";s:18:"gallery:properties";}s:15:"thumbProperties";a:6:{s:4:"name";s:15:"thumbProperties";s:4:"desc";s:28:"gallery.thumbproperties_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:11:"linkToImage";a:6:{s:4:"name";s:11:"linkToImage";s:4:"desc";s:24:"gallery.linktoimage_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:13:"imageGetParam";a:6:{s:4:"name";s:13:"imageGetParam";s:4:"desc";s:26:"gallery.imagegetparam_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:7:"galItem";s:7:"lexicon";s:18:"gallery:properties";}s:10:"imageWidth";a:6:{s:4:"name";s:10:"imageWidth";s:4:"desc";s:23:"gallery.imagewidth_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:500;s:7:"lexicon";s:18:"gallery:properties";}s:11:"imageHeight";a:6:{s:4:"name";s:11:"imageHeight";s:4:"desc";s:24:"gallery.imageheight_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:500;s:7:"lexicon";s:18:"gallery:properties";}s:13:"imageZoomCrop";a:6:{s:4:"name";s:13:"imageZoomCrop";s:4:"desc";s:26:"gallery.imagezoomcrop_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:18:"gallery:properties";}s:8:"imageFar";a:6:{s:4:"name";s:8:"imageFar";s:4:"desc";s:21:"gallery.imagefar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:12:"imageQuality";a:6:{s:4:"name";s:12:"imageQuality";s:4:"desc";s:25:"gallery.imagequality_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:90;s:7:"lexicon";s:18:"gallery:properties";}s:15:"imageProperties";a:6:{s:4:"name";s:15:"imageProperties";s:4:"desc";s:28:"gallery.imageproperties_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:4:"sort";a:6:{s:4:"name";s:4:"sort";s:4:"desc";s:17:"gallery.sort_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"rank";s:7:"lexicon";s:18:"gallery:properties";}s:3:"dir";a:6:{s:4:"name";s:3:"dir";s:4:"desc";s:16:"gallery.dir_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"ASC";s:7:"lexicon";s:18:"gallery:properties";}s:5:"limit";a:6:{s:4:"name";s:5:"limit";s:4:"desc";s:18:"gallery.limit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:0;s:7:"lexicon";s:18:"gallery:properties";}s:5:"start";a:6:{s:4:"name";s:5:"start";s:4:"desc";s:18:"gallery.start_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:0;s:7:"lexicon";s:18:"gallery:properties";}s:12:"showInactive";a:6:{s:4:"name";s:12:"showInactive";s:4:"desc";s:25:"gallery.showinactive_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:18:"gallery:properties";}s:23:"checkForRequestAlbumVar";a:6:{s:4:"name";s:23:"checkForRequestAlbumVar";s:4:"desc";s:36:"gallery.checkforrequestalbumvar_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:18:"gallery:properties";}s:15:"albumRequestVar";a:6:{s:4:"name";s:15:"albumRequestVar";s:4:"desc";s:28:"gallery.albumrequestvar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"galAlbum";s:7:"lexicon";s:18:"gallery:properties";}s:21:"checkForRequestTagVar";a:6:{s:4:"name";s:21:"checkForRequestTagVar";s:4:"desc";s:34:"gallery.checkforrequesttagvar_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:18:"gallery:properties";}s:13:"tagRequestVar";a:6:{s:4:"name";s:13:"tagRequestVar";s:4:"desc";s:26:"gallery.tagrequestvar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"galTag";s:7:"lexicon";N;}s:6:"useCss";a:6:{s:4:"name";s:6:"useCss";s:4:"desc";s:19:"gallery.usecss_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:18:"gallery:properties";}}', '');
INSERT INTO `sharnn_site_snippets` VALUES (2, 'GalleryAlbums', '', 0, 1, 0, '/**\n * Gallery\n *\n * Copyright 2010-2011 by Shaun McCormick <shaun@modx.com>\n *\n * Gallery is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Gallery is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Gallery; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package gallery\n */\n/**\n * Loads a list of Albums\n *\n * @package gallery\n */\n$gallery = $modx->getService(''gallery'',''Gallery'',$modx->getOption(''gallery.core_path'',null,$modx->getOption(''core_path'').''components/gallery/'').''model/gallery/'',$scriptProperties);\nif (!($gallery instanceof Gallery)) return '''';\n\n/* setup default properties */\n$rowTpl = $modx->getOption(''rowTpl'',$scriptProperties,''galAlbumRowTpl'');\n$rowCls = $modx->getOption(''rowCls'',$scriptProperties,'''');\n$showInactive = $modx->getOption(''showInactive'',$scriptProperties,false);\n$prominentOnly = $modx->getOption(''prominentOnly'',$scriptProperties,true);\n$toPlaceholder = $modx->getOption(''toPlaceholder'',$scriptProperties,false);\n$sort = $modx->getOption(''sort'',$scriptProperties,''createdon'');\n$dir = $modx->getOption(''dir'',$scriptProperties,''DESC'');\n$limit = $modx->getOption(''limit'',$scriptProperties,10);\n$start = $modx->getOption(''start'',$scriptProperties,0);\n$parent = $modx->getOption(''parent'',$scriptProperties,0);\n$showAll = $modx->getOption(''showAll'',$scriptProperties,false);\n$albumRequestVar = $modx->getOption(''albumRequestVar'',$scriptProperties,''galAlbum'');\n$albumCoverSort = $modx->getOption(''albumCoverSort'',$scriptProperties,''rank'');\n$albumCoverSortDir = $modx->getOption(''albumCoverSortDir'',$scriptProperties,''ASC'');\n$showName = $modx->getOption(''showName'',$scriptProperties,true);\n\n/* handle sorting for album cover */\nif ($albumCoverSort == ''rank'') {\n    $albumCoverSort = ''AlbumItems.rank'';\n}\nif (in_array(strtolower($albumCoverSort),array(''random'',''rand()'',''rand''))) {\n    $albumCoverSort = ''RAND()'';\n    $albumCoverSortDir = '''';\n}\n\n/* build query */\n$c = $modx->newQuery(''galAlbum'');\nif (!$showInactive) {\n    $c->where(array(\n        ''active'' => true,\n    ));\n}\nif ($prominentOnly) {\n    $c->where(array(\n        ''prominent'' => true,\n    ));\n}\nif (empty($showAll)) {\n    $c->where(array(\n        ''parent'' => $parent,\n    ));\n}\n$c->sortby($sort,$dir);\nif ($limit > 0) { $c->limit($limit,$start); }\n$albums = $modx->getCollection(''galAlbum'',$c);\n\n/* get thumb properties for album cover */\n$thumbProperties = $modx->getOption(''thumbProperties'',$scriptProperties,'''');\n$thumbProperties = !empty($thumbProperties) ? $modx->fromJSON($thumbProperties) : array();\n$thumbProperties = array_merge(array(\n    ''w'' => (int)$modx->getOption(''thumbWidth'',$scriptProperties,100),\n    ''h'' => (int)$modx->getOption(''thumbHeight'',$scriptProperties,100),\n    ''zc'' => (boolean)$modx->getOption(''thumbZoomCrop'',$scriptProperties,1),\n    ''far'' => (string)$modx->getOption(''thumbFar'',$scriptProperties,''C''),\n    ''q'' => (int)$modx->getOption(''thumbQuality'',$scriptProperties,90),\n),$thumbProperties);\n\n/* iterate */\n$output = array();\n$idx = 0;\nforeach ($albums as $album) {\n    $albumArray = $album->toArray();\n    $c = $modx->newQuery(''galItem'');\n    $c->innerJoin(''galAlbumItem'',''AlbumItems'');\n    $c->where(array(\n        ''AlbumItems.album'' => $album->get(''id''),\n    ));\n    $c->sortby($albumCoverSort,$albumCoverSortDir);\n    $c->limit(1);\n    $coverItem = $modx->getObject(''galItem'',$c);\n    \n    if ($coverItem) {\n        $albumArray[''image''] = $coverItem->get(''thumbnail'',$thumbProperties);\n    }\n\n    $albumArray[''cls''] = $rowCls;\n    $albumArray[''idx''] = $idx;\n    $albumArray[''showName''] = $showName;\n    $albumArray[''albumRequestVar''] = $albumRequestVar;\n    $output[] = $gallery->getChunk($rowTpl,$albumArray);\n    $idx++;\n}\n\n/* set output to placeholder or return */\n$outputSeparator = $modx->getOption(''outputSeparator'',$scriptProperties,"\\n");\n$output = implode($outputSeparator,$output);\nif ($toPlaceholder) {\n    $modx->setPlaceholder($toPlaceholder,$output);\n    return '''';\n}\nreturn $output;', 0, 'a:21:{s:6:"rowTpl";a:6:{s:4:"name";s:6:"rowTpl";s:4:"desc";s:25:"galleryalbums.rowtpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:14:"galAlbumRowTpl";s:7:"lexicon";s:18:"gallery:properties";}s:6:"rowCls";a:6:{s:4:"name";s:6:"rowCls";s:4:"desc";s:25:"galleryalbums.rowcls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:4:"sort";a:6:{s:4:"name";s:4:"sort";s:4:"desc";s:23:"galleryalbums.sort_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:9:"createdon";s:7:"lexicon";s:18:"gallery:properties";}s:3:"dir";a:6:{s:4:"name";s:3:"dir";s:4:"desc";s:22:"galleryalbums.dir_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"DESC";s:7:"lexicon";s:18:"gallery:properties";}s:5:"limit";a:6:{s:4:"name";s:5:"limit";s:4:"desc";s:24:"galleryalbums.limit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"10";s:7:"lexicon";s:18:"gallery:properties";}s:5:"start";a:6:{s:4:"name";s:5:"start";s:4:"desc";s:24:"galleryalbums.start_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:18:"gallery:properties";}s:13:"toPlaceholder";a:6:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:32:"galleryalbums.toplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}s:12:"showInactive";a:6:{s:4:"name";s:12:"showInactive";s:4:"desc";s:31:"galleryalbums.showinactive_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:18:"gallery:properties";}s:13:"prominentOnly";a:6:{s:4:"name";s:13:"prominentOnly";s:4:"desc";s:32:"galleryalbums.prominentonly_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:18:"gallery:properties";}s:6:"parent";a:6:{s:4:"name";s:6:"parent";s:4:"desc";s:25:"galleryalbums.parent_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:18:"gallery:properties";}s:7:"showAll";a:6:{s:4:"name";s:7:"showAll";s:4:"desc";s:26:"galleryalbums.showall_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:18:"gallery:properties";}s:8:"showName";a:6:{s:4:"name";s:8:"showName";s:4:"desc";s:27:"galleryalbums.showname_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:18:"gallery:properties";}s:15:"albumRequestVar";a:6:{s:4:"name";s:15:"albumRequestVar";s:4:"desc";s:34:"galleryalbums.albumrequestvar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"galAlbum";s:7:"lexicon";s:18:"gallery:properties";}s:14:"albumCoverSort";a:6:{s:4:"name";s:14:"albumCoverSort";s:4:"desc";s:33:"galleryalbums.albumcoversort_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"rank";s:7:"lexicon";s:18:"gallery:properties";}s:17:"albumCoverSortDir";a:6:{s:4:"name";s:17:"albumCoverSortDir";s:4:"desc";s:36:"galleryalbums.albumcoversortdir_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"ASC";s:7:"lexicon";s:18:"gallery:properties";}s:10:"thumbWidth";a:6:{s:4:"name";s:10:"thumbWidth";s:4:"desc";s:29:"galleryalbums.thumbwidth_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"100";s:7:"lexicon";s:18:"gallery:properties";}s:11:"thumbHeight";a:6:{s:4:"name";s:11:"thumbHeight";s:4:"desc";s:30:"galleryalbums.thumbheight_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"100";s:7:"lexicon";s:18:"gallery:properties";}s:13:"thumbZoomCrop";a:6:{s:4:"name";s:13:"thumbZoomCrop";s:4:"desc";s:32:"galleryalbums.thumbzoomcrop_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:18:"gallery:properties";}s:8:"thumbFar";a:6:{s:4:"name";s:8:"thumbFar";s:4:"desc";s:27:"galleryalbums.thumbfar_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";s:1:"C";s:7:"lexicon";s:18:"gallery:properties";}s:12:"thumbQuality";a:6:{s:4:"name";s:12:"thumbQuality";s:4:"desc";s:31:"galleryalbums.thumbquality_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:90;s:7:"lexicon";s:18:"gallery:properties";}s:15:"thumbProperties";a:6:{s:4:"name";s:15:"thumbProperties";s:4:"desc";s:34:"galleryalbums.thumbproperties_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:18:"gallery:properties";}}', '');
INSERT INTO `sharnn_site_snippets` VALUES (3, 'GalleryItem', '', 0, 1, 0, '/**\n * Gallery\n *\n * Copyright 2010-2011 by Shaun McCormick <shaun@modx.com>\n *\n * Gallery is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Gallery is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Gallery; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package gallery\n */\n/**\n * Display a single Gallery Item\n *\n * @package gallery\n */\n$gallery = $modx->getService(''gallery'',''Gallery'',$modx->getOption(''gallery.core_path'',null,$modx->getOption(''core_path'').''components/gallery/'').''model/gallery/'',$scriptProperties);\nif (!($gallery instanceof Gallery)) return '''';\n\n/* get ID of item */\n$id = (int)$modx->getOption(''id'',$scriptProperties,false);\nif ($modx->getOption(''checkForRequestVar'',$scriptProperties,true)) {\n    $getParam = $modx->getOption(''getParam'',$scriptProperties,''galItem'');\n    if (!empty($_REQUEST[$getParam])) { $id = (int)$_REQUEST[$getParam]; }\n}\nif (empty($id)) return '''';\n\n/* setup default properties */\n$tpl = $modx->getOption(''tpl'',$scriptProperties,''galItem'');\n$toPlaceholders = $modx->getOption(''toPlaceholders'',$scriptProperties,true);\n$toPlaceholdersPrefix = $modx->getOption(''toPlaceholdersPrefix'',$scriptProperties,''galitem'');\n$albumTpl = $modx->getOption(''albumTpl'',$scriptProperties,''galItemAlbum'');\n$albumSeparator = $modx->getOption(''albumSeparator'',$scriptProperties,'',&nbsp;'');\n$albumRequestVar = $modx->getOption(''albumRequestVar'',$scriptProperties,''galAlbum'');\n$tagTpl = $modx->getOption(''tagTpl'',$scriptProperties,''galItemTag'');\n$tagSeparator = $modx->getOption(''tagSeparator'',$scriptProperties,'',&nbsp;'');\n$tagSortDir = $modx->getOption(''tagSortDir'',$scriptProperties,''DESC'');\n$tagRequestVar = $modx->getOption(''tagRequestVar'',$scriptProperties,''galTag'');\n/* get item */\n$c = $modx->newQuery(''galItem'');\n$c->select($modx->getSelectColumns(''galItem'',''galItem''));\n$c->where(array(\n    ''id'' => $id,\n));\n$item = $modx->getObject(''galItem'',$c);\nif (empty($item)) return '''';\n\n/* setup placeholders */\n$itemArray = $item->toArray();\n$itemArray[''filename''] = basename($item->get(''filename''));\n$itemArray[''filesize''] = $item->get(''filesize'');\n\n/* get image+thumbnail */\n$thumbProperties = $modx->getOption(''thumbProperties'',$scriptProperties,'''');\n$thumbProperties = !empty($thumbProperties) ? $modx->fromJSON($thumbProperties) : array();\n$thumbProperties = array_merge(array(\n    ''w'' => (int)$modx->getOption(''thumbWidth'',$scriptProperties,100),\n    ''h'' => (int)$modx->getOption(''thumbHeight'',$scriptProperties,100),\n    ''zc'' => (boolean)$modx->getOption(''thumbZoomCrop'',$scriptProperties,0),\n    ''far'' => (string)$modx->getOption(''thumbFar'',$scriptProperties,''C''),\n    ''q'' => (int)$modx->getOption(''thumbQuality'',$scriptProperties,90),\n),$thumbProperties);\n$itemArray[''thumbnail''] = $item->get(''thumbnail'',$thumbProperties);\n\n$imageProperties = $modx->getOption(''imageProperties'',$scriptProperties,'''');\n$imageProperties = !empty($imageProperties) ? $modx->fromJSON($imageProperties) : array();\n$imageProperties = array_merge(array(\n    ''w'' => (int)$modx->getOption(''imageWidth'',$scriptProperties,500),\n    ''h'' => (int)$modx->getOption(''imageHeight'',$scriptProperties,500),\n    ''zc'' => (boolean)$modx->getOption(''imageZoomCrop'',$scriptProperties,0),\n    ''far'' => (string)$modx->getOption(''imageFar'',$scriptProperties,false),\n    ''q'' => (int)$modx->getOption(''imageQuality'',$scriptProperties,90),\n),$imageProperties);\n$itemArray[''image''] = $item->get(''thumbnail'',$imageProperties);\n\n/* get albums */\n$c = $modx->newQuery(''galAlbum'');\n$c->innerJoin(''galAlbumItem'',''AlbumItems'',$modx->getSelectColumns(''galAlbumItem'',''AlbumItems'','''',array(''album'')).'' = ''.$modx->getSelectColumns(''galAlbum'',''galAlbum'','''',array(''id''))\n    .'' AND ''.$modx->getSelectColumns(''galAlbumItem'',''AlbumItems'','''',array(''item'')).'' = ''.$item->get(''id''));\n$c->sortby(''AlbumItems.rank'',''ASC'');\n$albums = $modx->getCollection(''galAlbum'',$c);\n$itemArray[''albums''] = array();\n$i = 0;\nforeach ($albums as $album) {\n    $albumArray = $album->toArray('''',true,true);\n    $albumArray[''idx''] = $i;\n    $albumArray[''albumRequestVar''] = $albumRequestVar;\n    $itemArray[''albums''][] = $gallery->getChunk($albumTpl,$albumArray);\n    $i++;\n}\n$itemArray[''albums''] = implode($albumSeparator,$itemArray[''albums'']);\n\n/* get tags */\n$c = $modx->newQuery(''galTag'');\n$c->where(array(\n    ''item'' => $item->get(''id''),\n));\n$c->sortby(''tag'',$tagSortDir);\n$tags = $modx->getCollection(''galTag'',$c);\n$i = 0;\n$itemArray[''tags''] = array();\nforeach ($tags as $tag) {\n    $tagArray = $tag->toArray();\n    $tagArray[''idx''] = $i;\n    $tagArray[''tagRequestVar''] = $tagRequestVar;\n    $itemArray[''tags''][] = $gallery->getChunk($tagTpl,$tagArray);\n    $i++;\n}\n$itemArray[''tags''] = implode($tagSeparator,$itemArray[''tags'']);\n\n/* if outputting to placeholders, use this, otherwise, use tpl */\nif ($toPlaceholders) {\n    $modx->toPlaceholders($itemArray,$toPlaceholdersPrefix);\n    return '''';\n}\n\nif (empty($tpl)) return '''';\n$output .= $gallery->getChunk($tpl,$itemArray);\nreturn $output;', 0, NULL, '');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_templates`
-- 

CREATE TABLE `sharnn_site_templates` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `templatename` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default 'Template',
  `editor_type` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `icon` varchar(255) NOT NULL default '',
  `template_type` int(11) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL default '0',
  `properties` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_site_templates`
-- 

INSERT INTO `sharnn_site_templates` VALUES (1, 'BaseTemplate', 'Template', 0, 0, '', 0, '<html>\n<head>\n<title>[[++site_name]] - [[*pagetitle]]</title>\n<base href="[[++site_url]]" />\n<link media="screen" rel="stylesheet" href="/assets/js/colorbox/example1/colorbox.css" />\n<script type="text/javascript" src="/assets/js/jquery-1.5.1.js"></script>\n<script type="text/javascript" src="/assets/js/colorbox/colorbox/jquery.colorbox.js"></script>\n<script>\n$(document).ready(function(){\n $("a[rel=''galery1'']").colorbox();\n});\n</script>\n</head>\n<body>\n[[*content]]\n</body>\n</html>', 0, 'a:0:{}');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_tmplvar_access`
-- 

CREATE TABLE `sharnn_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tmplvarid` int(10) NOT NULL default '0',
  `documentgroup` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_site_tmplvar_access`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_tmplvar_contentvalues`
-- 

CREATE TABLE `sharnn_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tmplvarid` int(10) NOT NULL default '0',
  `contentid` int(10) NOT NULL default '0',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_site_tmplvar_contentvalues`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_tmplvar_templates`
-- 

CREATE TABLE `sharnn_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL default '0',
  `templateid` int(11) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_site_tmplvar_templates`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_site_tmplvars`
-- 

CREATE TABLE `sharnn_site_tmplvars` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(20) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `caption` varchar(80) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `editor_type` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `locked` tinyint(1) unsigned NOT NULL default '0',
  `elements` text,
  `rank` int(11) NOT NULL default '0',
  `display` varchar(20) NOT NULL default '',
  `display_params` text,
  `default_text` text,
  `properties` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_site_tmplvars`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_system_eventnames`
-- 

CREATE TABLE `sharnn_system_eventnames` (
  `name` varchar(50) NOT NULL default '',
  `service` tinyint(4) unsigned NOT NULL default '0',
  `groupname` varchar(20) NOT NULL default '',
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_system_eventnames`
-- 

INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginEventBeforeSave', 1, 'Plugin Events');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginEventSave', 1, 'Plugin Events');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginEventBeforeRemove', 1, 'Plugin Events');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginEventRemove', 1, 'Plugin Events');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceGroupSave', 1, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceGroupBeforeSave', 1, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceGroupRemove', 1, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceGroupBeforeRemove', 1, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnSnippetBeforeSave', 1, 'Snippets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnSnippetSave', 1, 'Snippets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnSnippetBeforeRemove', 1, 'Snippets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnSnippetRemove', 1, 'Snippets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnSnipFormPrerender', 1, 'Snippets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnSnipFormRender', 1, 'Snippets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeSnipFormSave', 1, 'Snippets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnSnipFormSave', 1, 'Snippets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeSnipFormDelete', 1, 'Snippets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnSnipFormDelete', 1, 'Snippets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTemplateBeforeSave', 1, 'Templates');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTemplateSave', 1, 'Templates');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTemplateBeforeRemove', 1, 'Templates');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTemplateRemove', 1, 'Templates');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTempFormPrerender', 1, 'Templates');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTempFormRender', 1, 'Templates');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeTempFormSave', 1, 'Templates');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTempFormSave', 1, 'Templates');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeTempFormDelete', 1, 'Templates');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTempFormDelete', 1, 'Templates');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTemplateVarBeforeSave', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTemplateVarSave', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTemplateVarBeforeRemove', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTemplateVarRemove', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTVFormPrerender', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTVFormRender', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeTVFormSave', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTVFormSave', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeTVFormDelete', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTVFormDelete', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTVInputRenderList', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTVOutputRenderList', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnTVOutputRenderPropertiesList', 1, 'Template Variables');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserGroupBeforeSave', 1, 'User Groups');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserGroupSave', 1, 'User Groups');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserGroupBeforeRemove', 1, 'User Groups');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserGroupRemove', 1, 'User Groups');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnDocFormPrerender', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnDocFormRender', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeDocFormSave', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnDocFormSave', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeDocFormDelete', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnDocFormDelete', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnDocPublished', 5, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnDocUnPublished', 5, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeEmptyTrash', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnEmptyTrash', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceTVFormPrerender', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceTVFormRender', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceDelete', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceUndelete', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceBeforeSort', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceSort', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceDuplicate', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnResourceToolbarLoad', 1, 'Resources');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnRichTextEditorRegister', 1, 'RichText Editor');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnRichTextEditorInit', 1, 'RichText Editor');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnRichTextBrowserInit', 1, 'RichText Editor');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnWebLogin', 3, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeWebLogout', 3, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnWebLogout', 3, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnManagerLogin', 2, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeManagerLogout', 2, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnManagerLogout', 2, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeWebLogin', 3, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnWebAuthentication', 3, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeManagerLogin', 2, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnManagerAuthentication', 2, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnManagerLoginFormRender', 2, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnManagerLoginFormPrerender', 2, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPageUnauthorized', 1, 'Security');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserFormPrerender', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserFormRender', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeUserFormSave', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserFormSave', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeUserFormDelete', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserFormDelete', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserNotFound', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeUserActivate', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserActivate', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserChangePassword', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserBeforeRemove', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserBeforeSave', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserSave', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnUserRemove', 1, 'Users');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnWebPagePrerender', 5, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeCacheUpdate', 4, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnCacheUpdate', 4, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnLoadWebPageCache', 4, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeSaveWebPageCache', 4, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnSiteRefresh', 1, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnFileManagerUpload', 1, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnFileEditFormPrerender', 1, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnManagerPageInit', 2, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnWebPageInit', 5, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnLoadWebDocument', 5, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnParseDocument', 5, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnWebPageComplete', 5, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeManagerPageInit', 2, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPageNotFound', 1, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnHandleRequest', 5, 'System');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnSiteSettingsRender', 1, 'Settings');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnInitCulture', 3, 'Internationalization');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnCategorySave', 1, 'Categories');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnCategoryBeforeSave', 1, 'Categories');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnCategoryRemove', 1, 'Categories');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnCategoryBeforeRemove', 1, 'Categories');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnChunkSave', 1, 'Chunks');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnChunkBeforeSave', 1, 'Chunks');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnChunkRemove', 1, 'Chunks');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnChunkBeforeRemove', 1, 'Chunks');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnChunkFormPrerender', 1, 'Chunks');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnChunkFormRender', 1, 'Chunks');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeChunkFormSave', 1, 'Chunks');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnChunkFormSave', 1, 'Chunks');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforeChunkFormDelete', 1, 'Chunks');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnChunkFormDelete', 1, 'Chunks');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnContextSave', 1, 'Contexts');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnContextBeforeSave', 1, 'Contexts');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnContextRemove', 1, 'Contexts');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnContextBeforeRemove', 1, 'Contexts');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnContextFormPrerender', 2, 'Contexts');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnContextFormRender', 2, 'Contexts');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginSave', 1, 'Plugins');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginBeforeSave', 1, 'Plugins');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginRemove', 1, 'Plugins');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginBeforeRemove', 1, 'Plugins');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginFormPrerender', 1, 'Plugins');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginFormRender', 1, 'Plugins');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforePluginFormSave', 1, 'Plugins');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginFormSave', 1, 'Plugins');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnBeforePluginFormDelete', 1, 'Plugins');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPluginFormDelete', 1, 'Plugins');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPropertySetSave', 1, 'Property Sets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPropertySetBeforeSave', 1, 'Property Sets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPropertySetRemove', 1, 'Property Sets');
INSERT INTO `sharnn_system_eventnames` VALUES ('OnPropertySetBeforeRemove', 1, 'Property Sets');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_system_settings`
-- 

CREATE TABLE `sharnn_system_settings` (
  `key` varchar(50) NOT NULL default '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL default 'textfield',
  `namespace` varchar(40) NOT NULL default 'core',
  `area` varchar(255) NOT NULL default '',
  `editedon` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_system_settings`
-- 

INSERT INTO `sharnn_system_settings` VALUES ('allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('allow_duplicate_alias', '', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('archive_with', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('auto_menuindex', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('automatic_alias', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('blocked_minutes', '60', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_action_map', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_db', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_db_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_default', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_disabled', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_json', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_json_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_resource', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_resource_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_scripts', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('compress_css', '1', 'combo-boolean', 'core', 'manager', '2011-04-03 21:26:19');
INSERT INTO `sharnn_system_settings` VALUES ('compress_js', '1', 'combo-boolean', 'core', 'manager', '2011-04-03 21:26:19');
INSERT INTO `sharnn_system_settings` VALUES ('concat_js', '1', 'combo-boolean', 'core', 'manager', '2011-04-03 21:26:19');
INSERT INTO `sharnn_system_settings` VALUES ('container_suffix', '/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('cultureKey', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('custom_resource_classes', '', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('default_per_page', '20', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('default_template', '1', 'modx-combo-template', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('editor_css_path', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('editor_css_selectors', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('emailsender', 'chemeugene@gmail.com', 'textfield', 'core', 'authentication', '2011-04-03 21:26:19');
INSERT INTO `sharnn_system_settings` VALUES ('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('error_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('failed_login_attempts', '5', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('feed_modx_security', 'http://feeds.feedburner.com/modxsecurity', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('filemanager_path', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('filemanager_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODx user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODx Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('forward_merge_excludes', 'type,published,class_key,context_key', 'textfield', 'core', 'core', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>"~:`@\\?\\[\\]\\{\\}\\|\\^''\\\\]/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_urls', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('friendly_urls', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('hidemenu_default', '0', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_encoding', '8bit', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_smtp_helo', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_smtp_pass', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_smtp_port', '587', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_smtp_prefix', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('mail_smtp_user', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('manager_direction', 'ltr', 'textfield', 'core', 'language', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('manager_lang_attribute', 'en', 'textfield', 'core', 'language', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('manager_language', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('manager_theme', 'default', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('manager_use_tabs', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('proxy_host', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('proxy_password', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('proxy_port', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('proxy_username', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('password_generated_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('password_min_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('publish_default', '', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('rb_base_dir', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('rb_base_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('request_controller', 'index.php', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('request_param_alias', 'q', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('request_param_id', 'id', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('richtext_default', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('search_default', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('server_offset_time', '0', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('server_protocol', 'http', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('session_cookie_secure', '', 'combo-boolean', 'core', 'session', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('set_header', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODx Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODx Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('site_name', 'MODx Revolution', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('site_start', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('site_status', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('site_unavailable_page', '0', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('strip_image_paths', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('tree_root_id', '0', 'numberfield', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('unauthorized_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,htaccess,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,xls,txt', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('upload_flash', 'swf,fla', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('upload_maxsize', '1048576', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('use_alias_path', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('use_browser', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('use_editor', '1', 'combo-boolean', 'core', 'editor', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('use_multibyte', '', 'combo-boolean', 'core', 'language', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2011-04-03 21:32:26');
INSERT INTO `sharnn_system_settings` VALUES ('welcome_screen_url', 'http://misc.modx.com/revolution/welcome.20.html', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('which_editor', '', 'modx-combo-rte', 'core', 'editor', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('xhtml_urls', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('settings_version', '2.0.8-pl', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('settings_distro', 'traditional', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.backend_thumb_far', 'C', 'textfield', 'gallery', 'backend', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.backend_thumb_height', '100', 'textfield', 'gallery', 'backend', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.backend_thumb_width', '100', 'textfield', 'gallery', 'backend', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.backend_thumb_zoomcrop', '1', 'combo-boolean', 'gallery', 'backend', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.default_batch_upload_path', '{assets_path}images/', 'textfield', 'gallery', 'backend', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.thumbs_prepend_site_url', '', 'combo-boolean', 'gallery', '', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.core_path', 'X:\\home\\shar-nn\\www/core/components/gallery/', 'textfield', 'gallery', 'Paths', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.assets_path', 'X:/home/shar-nn/www/assets/components/gallery/', 'textfield', 'gallery', 'Paths', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.files_path', 'X:/home/shar-nn/www/assets/components/gallery/files/', 'textfield', 'gallery', 'Paths', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.phpthumb_path', 'X:/home/shar-nn/www/assets/components/phpthumb/', 'textfield', 'gallery', 'Paths', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.assets_url', '/assets/components/gallery/', 'textfield', 'gallery', 'Paths', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.files_url', '/assets/components/gallery/files/', 'textfield', 'gallery', 'Paths', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.phpthumb_url', '/assets/components/phpthumb/', 'textfield', 'gallery', 'Paths', '0000-00-00 00:00:00');
INSERT INTO `sharnn_system_settings` VALUES ('gallery.file_structure_version', '1.0', 'textfield', 'gallery', 'system', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_transport_packages`
-- 

CREATE TABLE `sharnn_transport_packages` (
  `signature` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  `installed` datetime default NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `workspace` int(10) unsigned NOT NULL default '0',
  `provider` int(10) unsigned NOT NULL default '0',
  `disabled` tinyint(1) unsigned NOT NULL default '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(255) NOT NULL,
  `metadata` text,
  `version_major` tinyint(4) unsigned NOT NULL default '0',
  `version_minor` tinyint(4) unsigned NOT NULL default '0',
  `version_patch` tinyint(4) unsigned NOT NULL default '0',
  `release` varchar(100) NOT NULL default '',
  `release_index` tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_transport_packages`
-- 

INSERT INTO `sharnn_transport_packages` VALUES ('gallery-1.1.0-pl', '2011-04-03 09:43:44', '2011-04-03 21:49:22', '2011-04-03 21:49:22', 0, 1, 1, 0, 'gallery-1.1.0-pl.transport.zip', NULL, 'a:9:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:292:"--------------------\n3PC: Gallery\n--------------------\nVersion: 0.1.0\nSince: June 4th, 2010\nAuthor: Shaun McCormick <shaun@modx.com>\n\n--------------------\n\nA Gallery system for your photos.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/splittingred/Gallery/issues";s:9:"changelog";s:4062:"Changelog for Gallery.\n\nGallery 1.1.0\n====================================\n- [#73] Fix issue with absoluteImage galItem issue and gallery.thumbs_prepend_site_url setting\n- Fix issue where marking gallery active/prominent did not stick\n- [#28], [#64] Gallery items are now stored by albumId/itemId.ext in their directories\n- Added showName for GalleryAlbums to toggle whether or not to display Album name\n- [#29], [#69] Add batch upload via Zip file to albums\n- [#42] Add URL field to galItem object for allowing Items to have URLs that load when you click on them\n- [#46] Add imageProperties, thumbProperties properties to all snippets that allow you to pass a JSON object of properties to pass to phpThumb\n- Add rowCls property to GalleryAlbums\n- [#60] Fix issue with galPhpThumb and image passthru\n- [#67] Fix prev lexicon placeholder in Galleriffic plugin\n- [#66] Fix issue with album cover xPDO call in GalleryAlbums snippet\n- Add total property to Gallery snippet for getPage support\n- i18n of Snippet properties\n\nGallery 1.0.2\n====================================\n- [#31] Add &gallerifficUseCss parameter for toggling CSS by Galleriffic\n- Add cover ability to GalleryAlbums by using rowTpl "galAlbumRowWithCoverTpl"\n- Fix issue where Gallery TV albums tree loaded page when clicking on a node\n\nGallery 1.0.1 (December 20th, 2010)\n====================================\n- [#54] Added filepath placeholder for getting absolute path of an image, fileurl for absolute URL\n- [#12] Make left-click do update-album in mgr tree\n- Add additional system setting checks for phpthumb config options.\n- *Many* caching improvements to phpthumb-generated thumbnails\n- Added gallery.thumbs_prepend_site_url setting for environments having issues with thumbnails\n- Fixed bugs with HTML in item thumbs, urls when xhtml_urls is true\n- Added French translation, github readme\n\nGallery 1.0.0\n=============\n- Added checks to prevent spaces in filenames\n- Fixed ampersand issue in gallery URLs\n- Fixed phpthumb cache issue by using core phpthumb\n- Fixed port issue on thumbs\n- Added updated Russian translation\n- Added cropping support to custom TV, fixed bugs\n- Added rotating, watermark and other options to custom TV\n- Added a few settings for customizing backend mgr UX, including default batch upload path\n- Fixed bug with sorting items in album\n- Added Gallery custom TV input, output and properties types\n- Adjusted code to allow batch upload to handle uppercase extensions\n- Updated copyright information\n\nGallery 0.1.2\n====================================\n- Fixed bug with request parameter generation in URLs\n- Abstracted SQL in snippets\n- Added in Russian translation\n\nGallery 0.1.1\n====================================\n- Added "image_absolute" placeholder to thumbTpl in Gallery snippet\n- Fixed possible issues with phpthumb and caching\n\nGallery 0.1.0\n====================================\n- Added in batch upload\n- Fixed bug with limit statement in Gallery snippet\n- Made it so Gallery snippet can be called without pointing to anything\n- More properly integrated system, so that albums can easily be toggled between\n- Added GalleryItem snippet\n- Added parameters to adjust the get params for how albums are selected\n- Fixed bug with setting inactive state on images\n- Optimizing for Revo RC-2\n- Fixed bug that occurs if Gallery is used where FURLs are off\n- Added parent support to galAlbums, GalleryAlbums snippet\n- Fixed drag/drop reordering capability in albums\n- Fixed bug with gallery tables prefix\n- Fixed bug in items view related to recent SVN changes\n- Fixed bug in Gallery class that prohibited using tpls (!)\n- Added copyright info to Gallery\n- Fixed various bugs found in test install\n- Setup build script for initial alpha release\n- Added phpThumb to assets directory\n- Added active indicators, name shortening to album update mgr ui\n- Added album remove processor\n- i18ned the code, filled out mgr UI functionality\n- Added check when removing album to delete items not in any other albums\n- Lots of dev work, got basics mostly functional\n- Initial commit";s:13:"setup-options";s:34:"gallery-1.1.0-pl/setup-options.php";s:6:"action";s:7:"install";s:9:"signature";s:16:"gallery-1.1.0-pl";s:8:"register";s:3:"mgr";s:5:"topic";s:44:"/workspace/package/install/gallery-1.1.0-pl/";s:12:"HTTP_MODAUTH";s:27:"modx4d98ad7bcac6f0.77724954";}', 'gallery', 'a:31:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556c94b2b083396d000cc9";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556c94b2b083396d000cc9";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:16:"gallery-1.1.0-pl";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"1.1.0";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:10;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:367:"<p>Gallery is a dynamic Gallery Extra for MODx Revolution. It allows you to \nquickly and easily put up galleries of images, sort them, tag them, and \ndisplay them in a myriad of ways in the front-end of your site.</p>\n\n<p>See the official documentation here:&nbsp;<a href="http://rtfm.modx.com/display/addon/Gallery">http://rtfm.modx.com/display/addon/Gallery</a></p>";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:513:"<p>Install via Package Management.</p><p><b>Note:</b> Make sure to backup your Gallery files in the location in the ''gallery.files_path'' System Setting before upgrading, as this update moves gallery file storage to an album-centric storage method.</p><p><b>Note</b>: When moving servers with a Gallery installation, you may need to edit these System Settings:</p><ul><li>gallery.core_path</li><li>gallery.assets_path</li><li>gallery.files_path</li><li>gallery.assets_url</li><li>gallery.files_url</li></ul><p></p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:4:"text";s:1398:"<p><b>New in 1.1.0</b></p><ul><li>[#73] Fix issue with absoluteImage galItem issue and gallery.thumbs_prepend_site_url setting</li><li>Fix issue where marking gallery active/prominent did not stick</li><li>[#28], [#64] Gallery items are now stored by albumId/itemId.ext in their directories</li><li>[#29], [#69] Add batch upload via Zip file to albums</li><li>[#42] Add URL field to galItem object for allowing Items to have URLs that load when you click on them</li><li>[#46] Add imageProperties, thumbProperties properties to all snippets that allow you to pass a JSON object of properties to pass to phpThumb</li><li>Improve caching of thumbnails on front-end</li><li>Added showName for GalleryAlbums to toggle whether or not to display Album name</li><li>Add rowCls property to GalleryAlbums</li><li>[#60] Fix issue with galPhpThumb and image passthru</li><li>[#67] Fix prev lexicon placeholder in Galleriffic plugin</li><li>[#66] Fix issue with album cover xPDO call in GalleryAlbums snippet</li><li>Add total property to Gallery snippet for getPage support</li><li>i18n of Snippet properties</li></ul><p><b>New in 1.0.2</b></p><ul><li>Add cover ability to GalleryAlbums by using &amp;rowTpl "galAlbumRowWithCoverTpl"</li><li>[#31] Add &amp;gallerifficUseCss parameter for toggling CSS by Galleriffic</li><li>Fix issue where Gallery TV albums tree loaded page when clicking on a node</li></ul>";s:8:"children";a:0:{}}i:14;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2011-03-14 16:05:07 UTC";s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:10:"created_by";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:16;a:3:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2011-03-14 16:05:07 UTC";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"12669";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:24;a:3:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:25;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:7:"Gallery";s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.0";s:8:"children";a:0:{}}i:28;a:4:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:4:"text";s:59:"http://modx.s3.amazonaws.com/extras/642/gallery-backend.png";s:8:"children";a:0:{}}i:29;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d7e3cb4f245542202000059";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d7e3cb3f245542202000058";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:30:"gallery-1.1.0-pl.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:4:"1289";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:13:"174.122.37.98";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=4d7e3cb4f245542202000059";s:8:"children";a:0:{}}}}i:30;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:16:"gallery-1.1.0-pl";s:8:"children";a:0:{}}}', 1, 1, 0, 'pl', 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_transport_providers`
-- 

CREATE TABLE `sharnn_transport_providers` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `api_key` varchar(255) NOT NULL default '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_transport_providers`
-- 

INSERT INTO `sharnn_transport_providers` VALUES (1, 'modxcms.com', 'The official MODx transport facility for 3rd party components.', 'http://rest.modxcms.com/extras/', '', '2011-02-21 13:54:05', NULL);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_user_attributes`
-- 

CREATE TABLE `sharnn_user_attributes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `internalKey` int(10) NOT NULL default '0',
  `fullname` varchar(100) NOT NULL default '',
  `role` int(10) NOT NULL default '0',
  `email` varchar(100) NOT NULL default '',
  `phone` varchar(100) NOT NULL default '',
  `mobilephone` varchar(100) NOT NULL default '',
  `blocked` tinyint(1) unsigned NOT NULL default '0',
  `blockeduntil` int(11) NOT NULL default '0',
  `blockedafter` int(11) NOT NULL default '0',
  `logincount` int(11) NOT NULL default '0',
  `lastlogin` int(11) NOT NULL default '0',
  `thislogin` int(11) NOT NULL default '0',
  `failedlogincount` int(10) NOT NULL default '0',
  `sessionid` varchar(100) NOT NULL default '',
  `dob` int(10) NOT NULL default '0',
  `gender` int(1) NOT NULL default '0',
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL default '',
  `city` varchar(255) NOT NULL default '',
  `state` varchar(25) NOT NULL default '',
  `zip` varchar(25) NOT NULL default '',
  `fax` varchar(100) NOT NULL default '',
  `photo` varchar(255) NOT NULL default '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL default '',
  `extended` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_user_attributes`
-- 

INSERT INTO `sharnn_user_attributes` VALUES (1, 1, 'Default Admin User', 1, 'chemeugene@gmail.com', '', '', 0, 0, 0, 1, 0, 1301851940, 0, 'b2b380a549c116d657abe436573cf326', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_user_group_roles`
-- 

CREATE TABLE `sharnn_user_group_roles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) unsigned NOT NULL default '9999',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Дамп данных таблицы `sharnn_user_group_roles`
-- 

INSERT INTO `sharnn_user_group_roles` VALUES (1, 'Member', NULL, 9999);
INSERT INTO `sharnn_user_group_roles` VALUES (2, 'Super User', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_user_messages`
-- 

CREATE TABLE `sharnn_user_messages` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(15) NOT NULL default '',
  `subject` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL default '0',
  `recipient` int(10) NOT NULL default '0',
  `private` tinyint(4) NOT NULL default '0',
  `date_sent` datetime NOT NULL default '0000-00-00 00:00:00',
  `read` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_user_messages`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_user_roles`
-- 

CREATE TABLE `sharnn_user_roles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `frames` int(1) NOT NULL default '0',
  `home` int(1) NOT NULL default '0',
  `view_document` int(1) NOT NULL default '0',
  `new_document` int(1) NOT NULL default '0',
  `save_document` int(1) NOT NULL default '0',
  `publish_document` int(1) NOT NULL default '0',
  `delete_document` int(1) NOT NULL default '0',
  `action_ok` int(1) NOT NULL default '0',
  `logout` int(1) NOT NULL default '0',
  `help` int(1) NOT NULL default '0',
  `messages` int(1) NOT NULL default '0',
  `new_user` int(1) NOT NULL default '0',
  `edit_user` int(1) NOT NULL default '0',
  `logs` int(1) NOT NULL default '0',
  `edit_parser` int(1) NOT NULL default '0',
  `save_parser` int(1) NOT NULL default '0',
  `edit_template` int(1) NOT NULL default '0',
  `settings` int(1) NOT NULL default '0',
  `credits` int(1) NOT NULL default '0',
  `new_template` int(1) NOT NULL default '0',
  `save_template` int(1) NOT NULL default '0',
  `delete_template` int(1) NOT NULL default '0',
  `edit_snippet` int(1) NOT NULL default '0',
  `new_snippet` int(1) NOT NULL default '0',
  `save_snippet` int(1) NOT NULL default '0',
  `delete_snippet` int(1) NOT NULL default '0',
  `edit_chunk` int(1) NOT NULL default '0',
  `new_chunk` int(1) NOT NULL default '0',
  `save_chunk` int(1) NOT NULL default '0',
  `delete_chunk` int(1) NOT NULL default '0',
  `empty_cache` int(1) NOT NULL default '0',
  `edit_document` int(1) NOT NULL default '0',
  `change_password` int(1) NOT NULL default '0',
  `error_dialog` int(1) NOT NULL default '0',
  `about` int(1) NOT NULL default '0',
  `file_manager` int(1) NOT NULL default '0',
  `save_user` int(1) NOT NULL default '0',
  `delete_user` int(1) NOT NULL default '0',
  `save_password` int(11) NOT NULL default '0',
  `edit_role` int(1) NOT NULL default '0',
  `save_role` int(1) NOT NULL default '0',
  `delete_role` int(1) NOT NULL default '0',
  `new_role` int(1) NOT NULL default '0',
  `access_permissions` int(1) NOT NULL default '0',
  `bk_manager` int(1) NOT NULL default '0',
  `new_plugin` int(1) NOT NULL default '0',
  `edit_plugin` int(1) NOT NULL default '0',
  `save_plugin` int(1) NOT NULL default '0',
  `delete_plugin` int(1) NOT NULL default '0',
  `new_module` int(1) NOT NULL default '0',
  `edit_module` int(1) NOT NULL default '0',
  `save_module` int(1) NOT NULL default '0',
  `delete_module` int(1) NOT NULL default '0',
  `exec_module` int(1) NOT NULL default '0',
  `view_eventlog` int(1) NOT NULL default '0',
  `delete_eventlog` int(1) NOT NULL default '0',
  `manage_metatags` int(1) NOT NULL default '0',
  `edit_doc_metatags` int(1) NOT NULL default '0',
  `new_web_user` int(1) NOT NULL default '0',
  `edit_web_user` int(1) NOT NULL default '0',
  `save_web_user` int(1) NOT NULL default '0',
  `delete_web_user` int(1) NOT NULL default '0',
  `web_access_permissions` int(1) NOT NULL default '0',
  `view_unpublished` int(1) NOT NULL default '0',
  `import_static` int(1) NOT NULL default '0',
  `export_static` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `sharnn_user_roles`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_user_settings`
-- 

CREATE TABLE `sharnn_user_settings` (
  `user` int(11) NOT NULL default '0',
  `key` varchar(50) NOT NULL default '',
  `value` text,
  `xtype` varchar(75) NOT NULL default 'textfield',
  `namespace` varchar(40) NOT NULL default 'core',
  `area` varchar(255) NOT NULL default '',
  `editedon` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `sharnn_user_settings`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_users`
-- 

CREATE TABLE `sharnn_users` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `cachepwd` varchar(100) NOT NULL default '',
  `class_key` varchar(100) NOT NULL default 'modUser',
  `active` tinyint(1) unsigned NOT NULL default '1',
  `remote_key` varchar(255) default NULL,
  `remote_data` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_users`
-- 

INSERT INTO `sharnn_users` VALUES (1, 'chem', '52738fbec295da99819ccc8ceb807724', '', 'modUser', 1, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Структура таблицы `sharnn_workspaces`
-- 

CREATE TABLE `sharnn_workspaces` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `path` varchar(255) NOT NULL default '',
  `created` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL default '0',
  `attributes` mediumtext,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `sctive` (`active`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `sharnn_workspaces`
-- 

INSERT INTO `sharnn_workspaces` VALUES (1, 'Default MODx workspace', 'X:/home/shar-nn/www/core/', '2011-04-03 21:25:19', 1, NULL);
