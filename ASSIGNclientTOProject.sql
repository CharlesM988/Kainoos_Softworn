ALTER TABLE Project
  ADD COLUMN clientId,
  ADD CONSTRAINT fk_clientProject FOREIGN KEY (clientId) REFERENCES `Client`(clientId);
