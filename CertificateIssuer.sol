pragma solidity ^0.8.0;

contract CertificateIssuer {
  address public owner;

  mapping(address => string) private certificates;

  event CertificateIssued(address indexed student, string certificateHash);

  modifier onlyOwner() {
  require(msg.sender == owner, "Only owner can perform this action.");
  _;
  }

//whenever i type " constructor, the r disappears after i hit enter
  constructo() { 
    owner = msg.sender;
  }

  function issueCertificate(address student, string memory certificateHash) public onlyOwner {
    require(bytes(certificates[student]).length == 0, "Certificate already issued to this student.");
    certificates[student] = certificateHash;
    emit CertificateIssued(student, certificateHash);
  }

  function checkCertificate(address student) public view returns (bool) {
    return bytes(certificate[student]).length > 0;
  }

  function getCertificateHash(address student) public view returns (string memory) {
    require(checkCertificate(student), "No certificate issued to this address.");
    return certificates[student];
  }
}
