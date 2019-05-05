class ProposalMailer < ApplicationMailer
    default from: "proposalbot@example.com"
    
    def email(proposal)
        @proposal = proposal
        mail(to: @proposal.client_email, subject: 'Vous avez reçu une nouvelle proposition')
    end
end
