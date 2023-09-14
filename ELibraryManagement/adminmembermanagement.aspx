﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="ELibraryManagement.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                    <div class="container-fluid">
                <div class="row">
                    <div class="col-md-5">

                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <h4>Member Details</h4>
                                        </center>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col p-2">
                                        <center>
                                            <img src="imgs/generaluser.png" width="100"/>
                                        </center>
                                    </div>
                                </div>
                        
                                <div class="row">
                                    <div class="col">
                                        <hr />
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <label>Member ID</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" 
                                                placeholder="ID"></asp:TextBox>
                                            <asp:LinkButton ID="LinkButton4" class="btn btn-primary" runat="server">
                                                <i class="fa-solid fa-circle-check"></i>
                                            </asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <label>Full Name</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" 
                                                placeholder="Full Name" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-5">
                                        <label>Account Status</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                            <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server" 
                                                placeholder="Status" ReadOnly="true"></asp:TextBox>

                                            <asp:LinkButton ID="LinkButton1" class="btn btn-success mr-1" runat="server">
                                                <i class="fa-solid fa-circle-check"></i>
                                            </asp:LinkButton>

                                          <asp:LinkButton ID="LinkButton2" class="btn btn-warning mr-1" runat="server">
                                                <i class="fa-regular fa-circle-pause"></i>
                                            </asp:LinkButton>

                                          <asp:LinkButton ID="LinkButton3" class="btn btn-danger mr-1" runat="server">
                                                <i class="fa-solid fa-circle-xmark"></i>
                                            </asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <label>DOB</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                                placeholder="DOB" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <label>Contact No.</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                                placeholder="Contact No." ReadOnly="true" TextMode="Phone"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-5">
                                        <label>Email</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" 
                                                placeholder="Email" ReadOnly="true" TextMode="Email"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-4">
                                        <label>State</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" 
                                                placeholder="State" ReadOnly="true"></asp:TextBox>  
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <label>City</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" 
                                                placeholder="City" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <label>Pin Code</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" 
                                                placeholder="Pin Code" ReadOnly="true" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col">
                                        <label>Full Postal Address</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" 
                                                ReadOnly="true" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-8 mx-auto">
                                        <asp:Button ID="Button1" CssClass="btn btn-lg btn-block btn-danger" runat="server" Text="Delete User Permanently" />
                                    </div>
                                </div>

                            </div>
                        </div>

                        <a href="homepage.aspx"> << Back to Home</a><br /><br />

                    </div>

                    <div class="col-md-7">

                        <div class="card">
                            <div class="card-body">

                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <h4>Member List</h4>
                                        </center>
                                    </div>
                                </div>
                        
                                <div class="row">
                                    <div class="col">
                                        <hr />
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <asp:GridView CssClass="table table-striped table-bordered"
                                            ID="GridView1" runat="server"></asp:GridView>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                </div>
    </div>

</asp:Content>
