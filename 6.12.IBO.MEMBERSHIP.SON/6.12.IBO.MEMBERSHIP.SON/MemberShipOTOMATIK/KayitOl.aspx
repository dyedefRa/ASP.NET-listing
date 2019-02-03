<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayitOl.aspx.cs" Inherits="_6._12.IBO.MEMBERSHIP.SON._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" AnswerLabelText="Gizli Cevap:" AnswerRequiredErrorMessage="Gizli cevap boş geçilemez.." CancelButtonText="İptal" CompleteSuccessText="Kullanıcı hesabı başarıyla oluşturuldu." ConfirmPasswordCompareErrorMessage="Parolalar uyuşmuyor" ConfirmPasswordLabelText="Parola Tekrari" ConfirmPasswordRequiredErrorMessage="Parola tekrari boş geçilemez.." ContinueButtonText="Devam" ContinueDestinationPageUrl="~/MemberShipOTOMATIK/GirisYap.aspx" CreateUserButtonText="Kullanici Oluştur" DuplicateEmailErrorMessage="Bu emaile ait bir kullanıcı kayıtlıdırçLütfen farklı bir adres giriniz.." DuplicateUserNameErrorMessage="Bu kullanıcı adı daha önce alınmış..." EmailRegularExpressionErrorMessage="Geçersiz email adresi" EmailRequiredErrorMessage="Email adresi boş geçilemez.." FinishCompleteButtonText="Bitti" FinishPreviousButtonText="İleri" InvalidAnswerErrorMessage="Geçersiz gizli cevap" InvalidEmailErrorMessage="Geçersiz email adresi" InvalidPasswordErrorMessage="Geçersiz parola" InvalidQuestionErrorMessage="Geçersiz gizli soru" PasswordLabelText="Parola:" PasswordRegularExpressionErrorMessage="Girilen parola kurallara uymuyor.." PasswordRequiredErrorMessage="Parola gerekli*" QuestionLabelText="Gizli Soru:" QuestionRequiredErrorMessage="Gizli soru boş geçilemez" StartNextButtonText="Başla" StepNextButtonText="İleri" StepPreviousButtonText="Geri" UnknownErrorMessage="Hesap oluşturulamadı.Lütfen daha sonra tekrar deneyiniz.." UserNameLabelText="Kullanıcı Adı:" UserNameRequiredErrorMessage="Kullanıcı adı boş geçilemez">
                <WizardSteps>
                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td align="center">Complete</td>
                                </tr>
                                <tr>
                                    <td>Kullanıcı hesabı başarıyla oluşturuldu.</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" Text="Devam" ValidationGroup="CreateUserWizard1" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:CompleteWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
        </div>
    </form>
</body>
</html>
