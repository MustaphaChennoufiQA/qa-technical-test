class LoginPage {
    openLoginPage() {
        cy.visit('/auth_ecommerce.html')
    }

    enterUserCredentials(email: string, password: string) {
        cy.get("#email").type(email);
        cy.get("#password").type(password);
    }

    clickSubmit() {
        cy.get("#submitLoginBtn").click();
    }

    assertLoginSuccess() {
        cy.get('h2.section-header').should('be.visible');
        cy.get('.btn.btn-primary.btn-purchase').should('contain.text', 'PROCEED TO CHECKOUT');
    }
}

export default LoginPage;