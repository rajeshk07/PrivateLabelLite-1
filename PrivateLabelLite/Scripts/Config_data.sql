GO
SET IDENTITY_INSERT [dbo].[Configs] ON 

INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (7, N'client_secret', N'abcd', N'Auth')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (8, N'TokenOAuth', N'https://eauth.techdata.eu/as/token.oauth2', N'Auth')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (9, N'client_id', N'abcd', N'Auth')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (10, N'SOIN', N'abcd', N'Auth')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (11, N'grant_type', N'client_credentials', N'Auth')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (12, N'CustomerSearchURL', N'https://partnerapi.tdstreamone.eu/endCustomer/search', N'API URL')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (13, N'OrderSearchUrl', N'https://partnerapi.tdstreamone.eu/order/search', N'API URL')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (14, N'OrderModifyUrl', N'https://partnerapi.tdstreamone.eu/order/', N'API URL')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (15, N'OrderDetailUrl', N'https://partnerapi.tdstreamone.eu/order/details/{saleOrderId}', N'API URL')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (16, N'ModifyAddOnUrl', N'https://partnerapi.tdstreamone.eu/order/addOns', N'API URL')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (17, N'ResellerId', N'abcd', N'Reseller Info')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (18, N'VendorListUrl', N'https://partnerapi.tdstreamone.eu/catalog/vendors', N'API URL')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (19, N'VendorCatalogSearchUrl', N'https://partnerapi.tdmarketplace.net/catalog/search', N'API URL')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (21, N'ResellerName', N'Tech Data 2', N'Reseller Info')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (22, N'ApplicationName', N'Pll Test App', N'App Info')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (23, N'AllowedResellers', N'abcd', N'Reseller Info')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (24, N'AppUrl', N'Your-Azure-Url', N'Reseller Info')
INSERT [dbo].[Configs] ([Id], [Key], [Value], [Type]) VALUES (25, N'SubscriptionSearchUrl', N'https://partnerapi.tdstreamone.eu/order/subscriptions/', N'API URL')
SET IDENTITY_INSERT [dbo].[Configs] OFF



GO
SET IDENTITY_INSERT [dbo].[SiteContent] ON 

INSERT [dbo].[SiteContent] ([Id], [Key], [Value]) VALUES (1, N'TermsAndConditions', N'Coming Soon.')
SET IDENTITY_INSERT [dbo].[SiteContent] OFF