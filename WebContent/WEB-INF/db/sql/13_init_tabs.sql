---------------------------------------
-- �����e�[�u��
---------------------------------------
-- TRUNCATE goods;
INSERT INTO goods VALUES('101001', '���ւ�`�����`', 780, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101002', '���ւ�a�����`', 880, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101003', '�p�X�^�����`', 780, 0, '2003-06-01', NULL);
INSERT INTO goods VALUES('101004', '�r�[�t�J�c�����`', 880, 0, '2003-07-01', '(1).�p�l���ꂽ���[�X��150g���~�[�g�n���}�[�Œ@���܂��B(2).180�x�̃t���C���[��6���ԗg���܂��B(3).�z���C�g�v���[�g�ɁA��䥂ł��ꂽ�ق����50g�ƃi�`�������|�e�g50g���ڂ��A����ɗ��Ă�����悤�ɗg�������J�c��u���܂��B(4).�J�c�\�[�X���z���C�g�J�b�v��20g����A�r�[�t�J�c�����ɒu���܂��B(5).�p�Z��1�؂���r�[�t�J�c�������ɒu���܂��B');
INSERT INTO goods VALUES('101101', '�`�L���\�e�[�a���\�[�X', 780, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101102', '�`�L���\�e�[�I�j�I���\�[�X', 780, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101103', '�a���n���o�[�O�X�e�[�L', 780, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101104', '�`�[�Y�n���o�[�O�X�e�[�L', 780, 0, '2003-07-01', NULL);
INSERT INTO goods VALUES('101105', '�n���o�[�O�X�e�[�L�f�~�O���X�\�[�X', 780, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101201', '�~�[�g�\�[�X', 780, 0, '2003-05-15', '(1).��䥂ł��ꂽ�p�X�^180g��30�b�ԓ��ʂ����܂��B(2).�t���C�p���ɃT���_��5g�𗎂Ƃ��M���܂��B(3).���ʂ������p�X�^�𓒐؂肵�A�؂΂��ō����Ȃ���A�t���C�p���ŃT���_���Ɨǂ����܂��܂��B���E�����傤�E�o�W���R���t���C�p���ł܂Ԃ��A�I���[�u�I�C������U�肵�܂��B(4).�X�p�Q�e�B�{�[���Ƀp�X�^�𐷂�t���A���̒����ɗǂ����߂�ꂽ�~�[�g�\�[�X1�܂��J�����Ă����܂��B(5).�G�L�X�g���o�[�W���I�C���A�A�b�V�F���ꂽ�p�Z�����\�[�X�̏�ɐU�肩���܂��B');
INSERT INTO goods VALUES('101202', '�J���{�i�[��', 880, 0, '2003-06-01', NULL);
INSERT INTO goods VALUES('101203', '�y�y�����`�[�j', 780, 0, '2003-06-01', NULL);
INSERT INTO goods VALUES('101301', '�R�[�q�[', 250, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101302', '�A�C�X�R�[�q�[', 300, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101303', '�g��', 250, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101304', '�A�C�X�e�B', 300, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101305', '�I�����W�W���[�X', 300, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101306', '�A�b�v���W���[�X', 300, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101401', '�Ƃ񂩂�H', 1000, 0, '2003-07-01', NULL);
INSERT INTO goods VALUES('102101', '���C�X', 160, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('102102', '�p��', 160, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('102103', '�g�[�X�g', 160, 0, '2003-05-15', NULL);

---------------------------------------
-- �d����e�[�u��
---------------------------------------
-- TRUNCATE supplier;
INSERT INTO supplier VALUES('301101', '������', '��ʌ���z�s', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301102', '�p�X�R', '�����s�]�ː��', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301103', '���C�w���t', '���{�����s', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301104', '���v�g���g��', '�����s�`��', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301105', '�㓇����', '���l�s����', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301106', '���ʃp�[�g�i�[�Y', NULL, NULL, NULL, NULL);
INSERT INTO supplier VALUES('301107', '�S�H', '��t�s���l��', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301108', '��n', '�V�����V���s', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301109', '��������', '�����s�]����', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301200', '�L�b�R�[�}��', '��t����c�s', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301201', '�Љ����Y', '���s����', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301202', '���C�����H�i', '�����s�߉ϋ�', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301203', '��������', '�����s��c��', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301204', '���B�t�[�Y', '��ʌ����ԌS', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301205', '�R�J�R�[���{�g�����O', NULL, NULL, NULL, NULL);

---------------------------------------
-- �H�ރe�[�u��
---------------------------------------
-- TRUNCATE food;
INSERT INTO food VALUES('201101', '�V�������Ђ���', '301103', 350, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201102', '���������܂�', '301103', 330, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201103', '�J���t�H���j�A��', '301103', 160, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201104', '�X�p�Q�e�B�X�s�K�h��', '301201', 1700, '�P�[�X', 200, 'g');
INSERT INTO food VALUES('201105', '�R�Җ_', '301102', 190, '�{', 36, '��');
INSERT INTO food VALUES('201106', '�W���X���C�X', '301102', 190, '�{', 8, '��');
INSERT INTO food VALUES('201107', '�o�^�[���[��', '301102', 100, '��', 12, '��');
INSERT INTO food VALUES('201108', '�Ⓚ�C�M���X�p��', '301102', 1120, '�P�[�X', 120, '��');
INSERT INTO food VALUES('201109', '�����̉�', '301201', 200, '�{', 500, 'g');
INSERT INTO food VALUES('201110', '�Z�����傤��', '301200', 1680, '�P�[�X', 12000, 'cc');
INSERT INTO food VALUES('201111', '�E�X�^�[�\�[�X', '301200', 1680, '�P�[�X', 12000, 'cc');
INSERT INTO food VALUES('201112', '���Z�\�[�X', '301200', 1680, '�P�[�X', 12000, 'cc');
INSERT INTO food VALUES('201113', '�Ⓚ�~�[�g�\�[�X', '301107', 2250, '�P�[�X', 60, '��');
INSERT INTO food VALUES('201114', '�T���_��', '301107', 1200, '�P�[�X', 12000, 'cc');
INSERT INTO food VALUES('201115', '�S�}��', '301107', 1400, '�P�[�X', 1200, 'cc');
INSERT INTO food VALUES('201116', '���[�h', '301106', 900, '�P�[�X', 12000, 'g');
INSERT INTO food VALUES('201117', '�p�����U��', '301106', 1990, '��', 1200, 'g');
INSERT INTO food VALUES('201118', '�G�L�X�g���o�[�W���I�C��', '301106', 2280, '��', 1200, 'cc');
INSERT INTO food VALUES('201119', '�������h�q', '301103', 280, '��', 200, '�{');
INSERT INTO food VALUES('201120', '���^�X', '301103', 1480, '�P�[�X', 6000, 'g');
INSERT INTO food VALUES('201121', '���݃L���x�c', '301103', 1380, '�P�[�X', 12000, 'g');
INSERT INTO food VALUES('201122', '�u���b�R���[', '301103', 590, '��', 1000, 'g');
INSERT INTO food VALUES('201123', '�A�X�p���K�X', '301103', 160, '��', 30, '�{');
INSERT INTO food VALUES('201124', '�Ⓚ�ق����', '301103', 1500, '�P�[�X', 6000, 'g');
INSERT INTO food VALUES('201125', '���t�L�����b�g', '301103', 1200, '�P�[�X', 6000, 'g');
INSERT INTO food VALUES('201126', '���񂰂�', '301103', 800, '��', 200, '�{');
INSERT INTO food VALUES('201127', '�I���[�u�I�C��', '301106', 1350, '��', 2400, 'cc');
INSERT INTO food VALUES('201128', '�N���A�A�b�v��100', '301201', 2350, '�P�[�X', 12000, 'cc');
INSERT INTO food VALUES('201129', '�I�����W100', '301201', 2250, '�P�[�X', 12000, 'cc');
INSERT INTO food VALUES('201130', '�u�����h�R�[�q�[���e�҂�', '301105', 3400, '�P�[�X', 48000, 'cc');
INSERT INTO food VALUES('201131', '���߂�', '301103', 550, '��', 1000, 'g');
INSERT INTO food VALUES('201132', '��t', '301103', 350, '��', 120, '��');
INSERT INTO food VALUES('201133', '�^�o�X�R�\�[�X', '301106', 1280, '��', 600, 'g');
INSERT INTO food VALUES('201134', '�z���C�g�y�b�p�[', '301106', 900, '��', 1000, 'g');
INSERT INTO food VALUES('201135', '�u���b�N�y�b�p�[', '301106', 1200, '��', 500, 'g');
INSERT INTO food VALUES('201136', '���b�h�y�b�p�[', '301106', 300, '�{', 50, 'g');
INSERT INTO food VALUES('201137', '�����T�[���C��', '301108', 420, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201138', '�a���T�[���C��', '301108', 860, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201139', '�a���q����', '301108', 1060, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201140', '���q����', '301108', 670, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201141', '�؃��[�X', '301108', 350, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201142', '�t���b�V���o�W��', '301103', 980, '��', 200, 'g');
INSERT INTO food VALUES('201143', '�p�Z��', '301103', 380, '��', 200, 'g');
INSERT INTO food VALUES('201144', '�A�C�X�R�[�q�[���e�҂�', '301105', 4500, '�P�[�X', 48000, 'cc');
INSERT INTO food VALUES('201145', '�����[�X��', '301108', 470, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201146', '�g�}�g�P�`���b�v', '301200', 1100, '��', 2400, 'g');
INSERT INTO food VALUES('201147', '�i�`�������|�e�g', '301103', 1200, '�P�[�X', 3000, 'g');
INSERT INTO food VALUES('201148', '������', '301103', 80, '��', 8, '��');
INSERT INTO food VALUES('201149', '�I�����W', '301103', 90, '��', 8, '��');
INSERT INTO food VALUES('201150', '�|�[�V�����o�^�[', '301106', 1980, '��', 100, '��');

---------------------------------------
-- ���V�s�e�[�u��
---------------------------------------
-- TRUNCATE recipe;
INSERT INTO recipe VALUES('101201', '201104', 100);
INSERT INTO recipe VALUES('101201', '201114', 30);
INSERT INTO recipe VALUES('101201', '201109', 0.5);
INSERT INTO recipe VALUES('101201', '201135', 0.5);
INSERT INTO recipe VALUES('101201', '201142', 1);
INSERT INTO recipe VALUES('101201', '201127', 10);
INSERT INTO recipe VALUES('101201', '201118', 5);
INSERT INTO recipe VALUES('101201', '201113', 1);
INSERT INTO recipe VALUES('101201', '201143', 0.5);
INSERT INTO recipe VALUES('101301', '201144', 200);
INSERT INTO recipe VALUES('101401', '201141', 180);
INSERT INTO recipe VALUES('101401', '201116', 10);
INSERT INTO recipe VALUES('101401', '201121', 50);
INSERT INTO recipe VALUES('101401', '201143', 5);
INSERT INTO recipe VALUES('101401', '201112', 20);
INSERT INTO recipe VALUES('101401', '201114', 30);
INSERT INTO recipe VALUES('101401', '201115', 5);
INSERT INTO recipe VALUES('101004', '201145', 120);
INSERT INTO recipe VALUES('101004', '201116', 10);
INSERT INTO recipe VALUES('101004', '201124', 50);
INSERT INTO recipe VALUES('101004', '201143', 5);
INSERT INTO recipe VALUES('101004', '201112', 10);
INSERT INTO recipe VALUES('101004', '201114', 30);
INSERT INTO recipe VALUES('101004', '201115', 5);
INSERT INTO recipe VALUES('101004', '201147', 50);
INSERT INTO recipe VALUES('101004', '201111', 5);
INSERT INTO recipe VALUES('101004', '201110', 5);
INSERT INTO recipe VALUES('101004', '201146', 5);
INSERT INTO recipe VALUES('101303', '201145', 1);
INSERT INTO recipe VALUES('101304', '201145', 2);
INSERT INTO recipe VALUES('101303', '201148', 1);
INSERT INTO recipe VALUES('101304', '201148', 1);
INSERT INTO recipe VALUES('101305', '201129', 150);
INSERT INTO recipe VALUES('101306', '201128', 150);
INSERT INTO recipe VALUES('102101', '201101', 100);
INSERT INTO recipe VALUES('102102', '201108', 1);
INSERT INTO recipe VALUES('102103', '201106', 2);
INSERT INTO recipe VALUES('102102', '201107', 1);
INSERT INTO recipe VALUES('102103', '201150', 1);
INSERT INTO recipe VALUES('102102', '201150', 1);
