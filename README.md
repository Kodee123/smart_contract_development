# smart_contract_development
Smart Contract Development - Issuing certificates

Ethereum-based smart contract with Solidity, which will allow an organization to issue certificates to students and allow for their verification.

Only the owner of the contract (the organisation) can issue certificates.
Each certificate corresponds to the student's wallet address.
Anyone can verify whether a certificate has been issued.
Create an event when a certificate is issued.

- Functions:

    issueCertificate(address, student, string, memory, certificateHash) // Issues a certificate to a student.

- Modifiers:
    onlyOwner // Allows only the contract owner to issue certificates.

  - Events:
      CertificateIssued(address, indexed, student, string, certificateHash) // It shall record the issue of certificates.
