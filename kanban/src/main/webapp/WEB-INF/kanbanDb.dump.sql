INSERT INTO users (id,name,email,password) VALUES
	 ('0ae676fa-4109-48b4-b7c8-6aa583ad7ec9','domenico','domenico.marangoni@gmail.com','˜ŒD@¯ù^UL`�ó÷CÔ');

INSERT INTO dashboard (id,authorid,name,position) VALUES
	 ('16b6cecf-2758-4fb9-b848-45795e1276ee','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9','Implementazione',4),
	 ('cbcb359c-4210-4b74-9f6f-dd1e6399a679','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9','Pubblicazione',5),
	 ('a1c882f0-fd64-4e47-bf12-46a1d56e9e22','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9','Idea',1),
	 ('da97ff60-302b-4174-910b-ae5893937c1d','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9','Bozza',2),
	 ('31a8df0d-4ce5-4001-99c8-1e3d7a381040','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9','Progetto',3);	 

INSERT INTO dashboardcontent (id,dashboardid,authorid,position,text) VALUES
	 ('fcaa9e28-e92f-4e99-bbf1-5c544c3da0c9','31a8df0d-4ce5-4001-99c8-1e3d7a381040','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9',1,'Ridefinire funzione di generazione token'),
	 ('ff55cbf8-b23a-4c9c-9f1e-a6d64e8e4938','31a8df0d-4ce5-4001-99c8-1e3d7a381040','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9',2,'Pubblicare bookstore su server git'),
	 ('554fed6e-e102-426e-9673-cc3b49e6d9af','31a8df0d-4ce5-4001-99c8-1e3d7a381040','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9',3,'Funzione di modifica dati utente'),
	 ('d97d26a1-0a6c-4f57-a118-bc0a225711ea','16b6cecf-2758-4fb9-b848-45795e1276ee','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9',5,'Aggiornare funzione calcolo totali'),
	 ('71792245-e566-461d-9ef5-cc9960ab8994','a1c882f0-fd64-4e47-bf12-46a1d56e9e22','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9',1,'Aggiungere funzionalità di gestione spedizioni'),
	 ('112be807-2547-4b6d-a24b-481d057945ec','a1c882f0-fd64-4e47-bf12-46a1d56e9e22','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9',2,'Controllare riferimenti agli autori delle operazioni'),
	 ('e6e694fc-7f58-4468-92db-7e50557bbb98','16b6cecf-2758-4fb9-b848-45795e1276ee','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9',7,'Rifare il layout generale dei file di intestazione e piè di pagina'),
	 ('5e2d16fd-c8fe-4267-a24d-7b0e3bd6f7d9','cbcb359c-4210-4b74-9f6f-dd1e6399a679','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9',8,'Funzione di elencazione catalogo prodotti'),
	 ('1332c50b-2495-4062-9ba0-f229fb38dded','da97ff60-302b-4174-910b-ae5893937c1d','0ae676fa-4109-48b4-b7c8-6aa583ad7ec9',1,'Estendere oggetti DAO');