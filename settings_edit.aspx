﻿<%@ Page Title="FNPIX >> Edit Setting" Language="C#" MasterPageFile="~/fnpix.master" AutoEventWireup="true" CodeBehind="settings_edit.aspx.cs" Inherits="fnpix.settings_edit" %>
<%@ Import Namespace="System.Activities.Expressions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Specific Page Vendor CSS -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="navigation_sidebar" runat="server">
<!-- start: sidebar goes into the  -->
	<aside id="sidebar-left" class="sidebar-left">
				
		<div class="sidebar-header">
		    <div class="sidebar-title">
		        Navigation
		    </div>
		    <div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
		        <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
		    </div>
		</div>
				
		<div class="nano">
		    <div class="nano-content">
		        <nav id="menu" class="nav-main" role="navigation">
		            <ul class="nav nav-main">
		                <li>
		                    <a href="/">
		                        <i class="fa fa-tachometer" aria-hidden="true"></i>
		                        <span>Dashboard</span>
		                    </a>
		                </li>
                        <li class="nav-parent">
                            <a>
                                <i class="fa fa-photo" aria-hidden="true"></i>
                                <span>Media</span>
                            </a>
                            <ul class="nav nav-children">
                                <li>
		                            <a href="/media">
		                                <span class="pull-right label label-primary"><%= total_media %></span>
		                                <i class="fa fa-photo" aria-hidden="true"></i>
		                                <span>All</span>
		                            </a>
		                        </li>
                                <li>
		                            <a href="/media/unapproved">
		                                <span class="pull-right label label-primary"><%= unapproved_media %></span>
		                                <i class="fa fa-question-circle" aria-hidden="true"></i>
		                                <span>Unapproved</span>
		                            </a>
		                        </li>
                                <li>
		                            <a href="/media/approved">
		                                <i class="fa fa-check-circle" aria-hidden="true"></i>
		                                <span>Approved</span>
		                            </a>
		                        </li>
                                <li>
		                            <a href="/media#instagram">
		                                <span class="pull-right label label-primary"><%= instagram_media %></span>
		                                <i class="fa fa-instagram" aria-hidden="true"></i>
		                                <span>Instagram</span>
		                            </a>
		                        </li>
                                <li>
		                            <a href="/media#twitter">
		                                <span class="pull-right label label-primary"><%= twitter_media %></span>
		                                <i class="fa fa-twitter" aria-hidden="true"></i>
		                                <span>Twitter</span>
		                            </a>
		                        </li>
                            </ul>
                        </li>
		                
                        <li class="nav-parent">
                            <a>
                                <i class="fa fa-dropbox" aria-hidden="true"></i>
                                <span>Dropbox</span>
                            </a>
                            <ul class="nav nav-children">
                                <li>
		                            <a href="/dropbox">
		                                <span class="pull-right label label-primary"><%= facebook_media %></span>
		                                <i class="fa fa-dropbox" aria-hidden="true"></i>
		                                <span>Dropbox</span>
		                            </a>
		                        </li>
                                <li>
                                    <a href="/dropbox/unapproved">
                                        <i class="fa fa-question-circle" aria-hidden="true"></i>
                                        <span>Unapproved</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/dropbox/approved">
                                        <i class="fa fa-check-circle" aria-hidden="true"></i>
                                        <span>Approved</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        
                        <li id="user_link" runat="server" Visible="false">
		                    <a href="/users">
		                        <i class="fa fa-users" aria-hidden="true"></i>
		                        <span>Users</span>
		                    </a>
		                </li>
                        <li id="preference_link" runat="server" Visible="false">
		                    <a href="/preferences">
		                        <i class="fa fa-gears" aria-hidden="true"></i>
		                        <span>Preferences</span>
		                    </a>
		                </li>
                        <li id="event_link" runat="server" Visible="false">
		                    <a href="/events">
		                        <i class="fa fa-calendar" aria-hidden="true"></i>
		                        <span>Events</span>
		                    </a>
		                </li>
                        <li id="display_link" runat="server" Visible="false">
		                    <a href="/displays">
		                        <i class="fa fa-desktop" aria-hidden="true"></i>
		                        <span>Displays</span>
		                    </a>
		                </li>
                        <li id="force_refresh" runat="server" Visible="true">
                            <a href="/force-refresh/<%= Session["event_id"] %>">
                                <i class="fa fa-cloud-download" aria-hidden="true"></i>
                                <span>Force Refresh</span>
                            </a>
                        </li>
		            </ul>
		        </nav>
		    </div>
				
		</div>
				
	</aside>
	<!-- end: sidebar -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="content_main" runat="server">
    <section role="main" class="content-body">
					<header class="page-header">
						<h2>Edit System Setting</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/dashboard">
										<i class="fa fa-tachometer"></i> <span>Dashboard</span>
									</a>
								</li>
                                <li>
                                    <a href="/settings"><i class="fa fa-gears"></i> Settings</a>
                                </li>
								<li><i class="fa fa-plus-circle"></i> <span>Edit System Setting</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>
                    
                    <asp:Panel runat="server" ID="pnl_success" Visible="false">
                        <div class="alert alert-success">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <strong>Success!</strong> You have successfully updated the system setting
                        </div>
                    </asp:Panel>

					<!-- start: page -->
						<div class="row">
							<div class="col-lg-12">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="fa fa-caret-down"></a>
											<a href="#" class="fa fa-times"></a>
										</div>
						
										<h2 class="panel-title">Edit System Setting</h2>
									</header>
									<div class="panel-body">
										<div class="form-horizontal form-bordered">
											<div class="form-group">
												<label class="col-md-3 control-label" for="search_text">Title</label>
												<div class="col-md-6">
												    <asp:TextBox runat="server" ID="title" CssClass="form-control" ClientIDMode="Static" />
												</div>
											</div>
                                            
                                            <div class="form-group">
												<label class="col-md-3 control-label" for="search_text">value</label>
												<div class="col-md-6">
												    <asp:TextBox runat="server" ID="system_value" CssClass="form-control" TextMode="MultiLine" style="height: 300px;" ClientIDMode="Static" />
												</div>
											</div>
                                            
                                            <div class="form-group">
												<label class="control-label col-md-3"></label>
												<div class="col-md-9">
													<asp:Button runat="server" ID="btn_process" CssClass="mb-xs mt-xs mr-xs btn btn-primary" Text="Submit" OnClick="update" />
												</div>
											</div>
                                            
                                            

										</div>
									</div>
								</section>
							</div>
						</div>
					<!-- end: page -->
				</section>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="footer_scripts" runat="server">
    
    <!-- Specific Page Vendor -->
    
    <script src="/assets/javascripts/forms/examples.advanced.form.js" /></script>

</asp:Content>