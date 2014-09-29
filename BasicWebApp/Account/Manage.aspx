﻿<%@ Page Title="Gestisci account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="BasicWebApp.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Cambiare le impostazioni dell'account</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>Password:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Cambia]" Visible="false" ID="ChangePassword" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Crea]" Visible="false" ID="CreatePassword" runat="server" />
                    </dd>
                    <dt>Account di accesso esterni:</dt>
                    <dd><%: LoginsCount %>
                        <asp:HyperLink NavigateUrl="/Account/ManageLogins" Text="[Gestisci]" runat="server" />

                    </dd>
                    <%--
                        I numeri di telefono possono essere usati come secondo fattore di verifica in un sistema di autenticazione a due fattori.
                        Vedere <a href="http://go.microsoft.com/fwlink/?LinkId=313242">questo articolo</a>
                        per informazioni su come configurare l'applicazione ASP.NET per il supporto dell'autenticazione a due fattori tramite SMS.
                        Rimuovere i commenti dal blocco seguente dopo aver configurato l'autenticazione a due fattori
                    --%>

                    <dt>Numero di telefono:</dt>
                    <%--
                    <% if (HasPhoneNumber)
                       { %>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/AddPhoneNumber" runat="server" Text="[Aggiungi]" />
                    </dd>
                    <% }
                       else
                       { %>
                    <dd>
                        <asp:Label Text="" ID="PhoneNumber" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/AddPhoneNumber" runat="server" Text="[Cambia]" /> &nbsp;|&nbsp;
                        <asp:LinkButton Text="[Rimuovi]" OnClick="RemovePhone_Click" runat="server" />
                    </dd>
                    <% } %>
                    --%>

                    <dt>Autenticazione a due fattori:</dt>
                    <dd>
                        <p>
                            Non sono configurati provider di autenticazione a due fattori. Vedere <a href="http://go.microsoft.com/fwlink/?LinkId=313242">questo articolo</a>
                            per informazioni su come configurare l'applicazione ASP.NET per il supporto dell'autenticazione a due fattori.
                        </p>
                        <% if (TwoFactorEnabled)
                          { %> 
                        <%--
                        Abilitata
                        <asp:LinkButton Text="[Disabilita]" runat="server" CommandArgument="false" OnClick="TwoFactorDisable_Click" />
                        --%>
                        <% }
                          else
                          { %> 
                        <%--
                        Disabilitata
                        <asp:LinkButton Text="[Abilita]" CommandArgument="true" OnClick="TwoFactorEnable_Click" runat="server" />
                        --%>
                        <% } %>
                    </dd>
                </dl>
            </div>
        </div>
    </div>

</asp:Content>
