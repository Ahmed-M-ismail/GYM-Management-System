-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/03/2016 13:32:40
-- Generated from EDMX file: C:\Users\Mohamed Hassan\Desktop\sw2\last one (1)\last one\Grade_Report_System\GradeSystemProject.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [GradeReportSystem];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Answer_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Answers] DROP CONSTRAINT [FK_Answer_Person];
GO
IF OBJECT_ID(N'[dbo].[FK_Answer_Question]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Answers] DROP CONSTRAINT [FK_Answer_Question];
GO
IF OBJECT_ID(N'[dbo].[FK_Course_user_Courses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Course_user] DROP CONSTRAINT [FK_Course_user_Courses];
GO
IF OBJECT_ID(N'[dbo].[FK_Course_user_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Course_user] DROP CONSTRAINT [FK_Course_user_Person];
GO
IF OBJECT_ID(N'[dbo].[FK_Courses_Courses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Courses] DROP CONSTRAINT [FK_Courses_Courses];
GO
IF OBJECT_ID(N'[dbo].[FK_grades_Courses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[grades] DROP CONSTRAINT [FK_grades_Courses];
GO
IF OBJECT_ID(N'[dbo].[FK_grades_Persons]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[grades] DROP CONSTRAINT [FK_grades_Persons];
GO
IF OBJECT_ID(N'[dbo].[FK_grades_professore]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[grades] DROP CONSTRAINT [FK_grades_professore];
GO
IF OBJECT_ID(N'[dbo].[FK_html_Link]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[htmls] DROP CONSTRAINT [FK_html_Link];
GO
IF OBJECT_ID(N'[dbo].[FK_link_type_Link]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[link_type] DROP CONSTRAINT [FK_link_type_Link];
GO
IF OBJECT_ID(N'[dbo].[FK_link_type_User_type]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[link_type] DROP CONSTRAINT [FK_link_type_User_type];
GO
IF OBJECT_ID(N'[dbo].[FK_Person_User_type1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Persons] DROP CONSTRAINT [FK_Person_User_type1];
GO
IF OBJECT_ID(N'[dbo].[FK_Student_Level_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Student_Level] DROP CONSTRAINT [FK_Student_Level_Person];
GO
IF OBJECT_ID(N'[dbo].[FK_Student_Level_User_level]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Student_Level] DROP CONSTRAINT [FK_Student_Level_User_level];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Answers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Answers];
GO
IF OBJECT_ID(N'[dbo].[Course_user]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Course_user];
GO
IF OBJECT_ID(N'[dbo].[Courses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Courses];
GO
IF OBJECT_ID(N'[dbo].[grades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[grades];
GO
IF OBJECT_ID(N'[dbo].[htmls]', 'U') IS NOT NULL
    DROP TABLE [dbo].[htmls];
GO
IF OBJECT_ID(N'[dbo].[link_type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[link_type];
GO
IF OBJECT_ID(N'[dbo].[Links]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Links];
GO
IF OBJECT_ID(N'[dbo].[Persons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Persons];
GO
IF OBJECT_ID(N'[dbo].[professores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[professores];
GO
IF OBJECT_ID(N'[dbo].[Questions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Questions];
GO
IF OBJECT_ID(N'[dbo].[Student_Level]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Student_Level];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[User_level]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User_level];
GO
IF OBJECT_ID(N'[dbo].[User_type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User_type];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Answers'
CREATE TABLE [dbo].[Answers] (
    [id] int IDENTITY(1,1) NOT NULL,
    [answer1] nvarchar(200)  NOT NULL,
    [question_id] int  NOT NULL,
    [user_id] int  NOT NULL
);
GO

-- Creating table 'Course_user'
CREATE TABLE [dbo].[Course_user] (
    [id] int IDENTITY(1,1) NOT NULL,
    [user_id] int  NOT NULL,
    [course_id] int  NOT NULL
);
GO

-- Creating table 'Courses'
CREATE TABLE [dbo].[Courses] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nchar(30)  NOT NULL
);
GO

-- Creating table 'grades'
CREATE TABLE [dbo].[grades] (
    [id] int IDENTITY(1,1) NOT NULL,
    [course_id] int  NOT NULL,
    [user_id] int  NOT NULL,
    [stu_grade] int  NOT NULL,
    [Prof_id] int  NOT NULL
);
GO

-- Creating table 'htmls'
CREATE TABLE [dbo].[htmls] (
    [id] int  NOT NULL,
    [link_id] int  NOT NULL
);
GO

-- Creating table 'Links'
CREATE TABLE [dbo].[Links] (
    [id] int IDENTITY(1,1) NOT NULL,
    [link1] nvarchar(120)  NOT NULL
);
GO

-- Creating table 'Persons'
CREATE TABLE [dbo].[Persons] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nchar(20)  NOT NULL,
    [Adress] nchar(50)  NOT NULL,
    [Phone] int  NOT NULL,
    [Mail] nchar(30)  NOT NULL,
    [Date_o_birth] datetime  NOT NULL,
    [User_Type_ID] int  NOT NULL,
    [Password] nchar(20)  NOT NULL,
    [Active] int  NOT NULL
);
GO

-- Creating table 'professores'
CREATE TABLE [dbo].[professores] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nchar(20)  NOT NULL,
    [Adress] nchar(50)  NOT NULL,
    [Phone] int  NOT NULL,
    [Mail] nchar(30)  NOT NULL,
    [Date_o_birth] datetime  NOT NULL,
    [Password] nchar(20)  NOT NULL,
    [Active] int  NOT NULL
);
GO

-- Creating table 'Questions'
CREATE TABLE [dbo].[Questions] (
    [id] int IDENTITY(1,1) NOT NULL,
    [question1] nvarchar(50)  NOT NULL,
    [answered] int  NOT NULL,
    [email] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Student_Level'
CREATE TABLE [dbo].[Student_Level] (
    [id] int IDENTITY(1,1) NOT NULL,
    [level_id] int  NOT NULL,
    [student_id] int  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'User_level'
CREATE TABLE [dbo].[User_level] (
    [id] int IDENTITY(1,1) NOT NULL,
    [level_num] nchar(10)  NOT NULL
);
GO

-- Creating table 'User_type'
CREATE TABLE [dbo].[User_type] (
    [user_type_id] int IDENTITY(1,1) NOT NULL,
    [name] nchar(10)  NOT NULL
);
GO

-- Creating table 'link_type'
CREATE TABLE [dbo].[link_type] (
    [Links_id] int  NOT NULL,
    [User_type_user_type_id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'Answers'
ALTER TABLE [dbo].[Answers]
ADD CONSTRAINT [PK_Answers]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Course_user'
ALTER TABLE [dbo].[Course_user]
ADD CONSTRAINT [PK_Course_user]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Courses'
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [PK_Courses]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'grades'
ALTER TABLE [dbo].[grades]
ADD CONSTRAINT [PK_grades]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'htmls'
ALTER TABLE [dbo].[htmls]
ADD CONSTRAINT [PK_htmls]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Links'
ALTER TABLE [dbo].[Links]
ADD CONSTRAINT [PK_Links]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [ID] in table 'Persons'
ALTER TABLE [dbo].[Persons]
ADD CONSTRAINT [PK_Persons]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'professores'
ALTER TABLE [dbo].[professores]
ADD CONSTRAINT [PK_professores]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [id] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [PK_Questions]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Student_Level'
ALTER TABLE [dbo].[Student_Level]
ADD CONSTRAINT [PK_Student_Level]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [id] in table 'User_level'
ALTER TABLE [dbo].[User_level]
ADD CONSTRAINT [PK_User_level]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [user_type_id] in table 'User_type'
ALTER TABLE [dbo].[User_type]
ADD CONSTRAINT [PK_User_type]
    PRIMARY KEY CLUSTERED ([user_type_id] ASC);
GO

-- Creating primary key on [Links_id], [User_type_user_type_id] in table 'link_type'
ALTER TABLE [dbo].[link_type]
ADD CONSTRAINT [PK_link_type]
    PRIMARY KEY CLUSTERED ([Links_id], [User_type_user_type_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [user_id] in table 'Answers'
ALTER TABLE [dbo].[Answers]
ADD CONSTRAINT [FK_Answer_Person]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[Persons]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Answer_Person'
CREATE INDEX [IX_FK_Answer_Person]
ON [dbo].[Answers]
    ([user_id]);
GO

-- Creating foreign key on [question_id] in table 'Answers'
ALTER TABLE [dbo].[Answers]
ADD CONSTRAINT [FK_Answer_Question]
    FOREIGN KEY ([question_id])
    REFERENCES [dbo].[Questions]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Answer_Question'
CREATE INDEX [IX_FK_Answer_Question]
ON [dbo].[Answers]
    ([question_id]);
GO

-- Creating foreign key on [course_id] in table 'Course_user'
ALTER TABLE [dbo].[Course_user]
ADD CONSTRAINT [FK_Course_user_Courses]
    FOREIGN KEY ([course_id])
    REFERENCES [dbo].[Courses]
        ([id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Course_user_Courses'
CREATE INDEX [IX_FK_Course_user_Courses]
ON [dbo].[Course_user]
    ([course_id]);
GO

-- Creating foreign key on [user_id] in table 'Course_user'
ALTER TABLE [dbo].[Course_user]
ADD CONSTRAINT [FK_Course_user_Person]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[professores]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Course_user_Person'
CREATE INDEX [IX_FK_Course_user_Person]
ON [dbo].[Course_user]
    ([user_id]);
GO

-- Creating foreign key on [id] in table 'Courses'
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [FK_Courses_Courses]
    FOREIGN KEY ([id])
    REFERENCES [dbo].[Courses]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [course_id] in table 'grades'
ALTER TABLE [dbo].[grades]
ADD CONSTRAINT [FK_grades_Courses]
    FOREIGN KEY ([course_id])
    REFERENCES [dbo].[Courses]
        ([id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_grades_Courses'
CREATE INDEX [IX_FK_grades_Courses]
ON [dbo].[grades]
    ([course_id]);
GO

-- Creating foreign key on [user_id] in table 'grades'
ALTER TABLE [dbo].[grades]
ADD CONSTRAINT [FK_grades_Persons]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[Persons]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_grades_Persons'
CREATE INDEX [IX_FK_grades_Persons]
ON [dbo].[grades]
    ([user_id]);
GO

-- Creating foreign key on [Prof_id] in table 'grades'
ALTER TABLE [dbo].[grades]
ADD CONSTRAINT [FK_grades_professore]
    FOREIGN KEY ([Prof_id])
    REFERENCES [dbo].[professores]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_grades_professore'
CREATE INDEX [IX_FK_grades_professore]
ON [dbo].[grades]
    ([Prof_id]);
GO

-- Creating foreign key on [link_id] in table 'htmls'
ALTER TABLE [dbo].[htmls]
ADD CONSTRAINT [FK_html_Link]
    FOREIGN KEY ([link_id])
    REFERENCES [dbo].[Links]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_html_Link'
CREATE INDEX [IX_FK_html_Link]
ON [dbo].[htmls]
    ([link_id]);
GO

-- Creating foreign key on [User_Type_ID] in table 'Persons'
ALTER TABLE [dbo].[Persons]
ADD CONSTRAINT [FK_Person_User_type1]
    FOREIGN KEY ([User_Type_ID])
    REFERENCES [dbo].[User_type]
        ([user_type_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Person_User_type1'
CREATE INDEX [IX_FK_Person_User_type1]
ON [dbo].[Persons]
    ([User_Type_ID]);
GO

-- Creating foreign key on [student_id] in table 'Student_Level'
ALTER TABLE [dbo].[Student_Level]
ADD CONSTRAINT [FK_Student_Level_Person]
    FOREIGN KEY ([student_id])
    REFERENCES [dbo].[Persons]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Student_Level_Person'
CREATE INDEX [IX_FK_Student_Level_Person]
ON [dbo].[Student_Level]
    ([student_id]);
GO

-- Creating foreign key on [level_id] in table 'Student_Level'
ALTER TABLE [dbo].[Student_Level]
ADD CONSTRAINT [FK_Student_Level_User_level]
    FOREIGN KEY ([level_id])
    REFERENCES [dbo].[User_level]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Student_Level_User_level'
CREATE INDEX [IX_FK_Student_Level_User_level]
ON [dbo].[Student_Level]
    ([level_id]);
GO

-- Creating foreign key on [Links_id] in table 'link_type'
ALTER TABLE [dbo].[link_type]
ADD CONSTRAINT [FK_link_type_Link]
    FOREIGN KEY ([Links_id])
    REFERENCES [dbo].[Links]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [User_type_user_type_id] in table 'link_type'
ALTER TABLE [dbo].[link_type]
ADD CONSTRAINT [FK_link_type_User_type]
    FOREIGN KEY ([User_type_user_type_id])
    REFERENCES [dbo].[User_type]
        ([user_type_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_link_type_User_type'
CREATE INDEX [IX_FK_link_type_User_type]
ON [dbo].[link_type]
    ([User_type_user_type_id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------