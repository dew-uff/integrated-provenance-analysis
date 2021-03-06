/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import DAO.ConnectionDB;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import prospective.Data;
import prospective.Port;
import prospective.Program;
import prospective.Workflow;
import prospective.relationship.HasDefaultParam;
import prospective.relationship.HasPort;
import prospective.relationship.HasSubProgram;
import retrospective.Execution;
import retrospective.User;
import retrospective.Visualization;
import retrospective.WExecution;
import retrospective.relationship.HadPlan;
import retrospective.relationship.HadPort;
import retrospective.relationship.Used;
import retrospective.relationship.WasAssociatedWith;
import retrospective.relationship.WasGeneratedBy;
import retrospective.relationship.WasInformedBy;
import retrospective.relationship.WasPartOf;
import java.io.File;
import utils.FileManager;

/**
 *
 * @author Wellington
 */
public class JfrmPrincipal extends javax.swing.JFrame {

    /**
     * Creates new form JfrmPrincipal
     */
    public JfrmPrincipal() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jLabel1 = new javax.swing.JLabel();
        jTabbedPane2 = new javax.swing.JTabbedPane();
        jPanel1 = new javax.swing.JPanel();
        jtxtUsername = new javax.swing.JTextField();
        jpwPass = new javax.swing.JPasswordField();
        jtxtDatabase = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jlblDatabase = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jtxtHostname = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jtxtPort = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jbnTestConn = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel7 = new javax.swing.JLabel();
        jtxtPath = new javax.swing.JTextField();
        jPanel3 = new javax.swing.JPanel();
        jrbtNewFile = new javax.swing.JRadioButton();
        jrbtExistingFile = new javax.swing.JRadioButton();
        jLabel8 = new javax.swing.JLabel();
        jtxtDataSetName = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        jtxtDataSetId = new javax.swing.JTextField();
        jbtnLoadFolder = new javax.swing.JButton();
        jbtnGenerate = new javax.swing.JButton();
        jbtnClose = new javax.swing.JButton();
        jlblTimeSpent = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        jLabel1.setText("VisTrails Cartridge");

        jtxtUsername.setText("root");

        jpwPass.setText("123456");

        jtxtDatabase.setText("vistrails_scievol_10");
        jtxtDatabase.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jtxtDatabaseActionPerformed(evt);
            }
        });

        jLabel5.setText("Password");

        jlblDatabase.setText("Database");

        jLabel2.setText("Hostname");

        jtxtHostname.setText("127.0.0.1");

        jLabel3.setText("Port");

        jtxtPort.setText("3306");

        jLabel4.setText("Username");

        jbnTestConn.setText("Test Connection");
        jbnTestConn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbnTestConnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jlblDatabase)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel2)
                            .addComponent(jLabel4)
                            .addComponent(jtxtHostname, javax.swing.GroupLayout.DEFAULT_SIZE, 191, Short.MAX_VALUE)
                            .addComponent(jtxtUsername)
                            .addComponent(jtxtDatabase))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel3)
                            .addComponent(jLabel5)
                            .addComponent(jtxtPort, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jpwPass, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(79, 79, 79))))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(161, 161, 161)
                .addComponent(jbnTestConn)
                .addGap(0, 166, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3))
                .addGap(6, 6, 6)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jtxtHostname, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jtxtPort, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(13, 13, 13)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(jLabel5))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jtxtUsername, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jpwPass, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(jlblDatabase)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jtxtDatabase, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jbnTestConn)
                .addContainerGap(17, Short.MAX_VALUE))
        );

        jTabbedPane2.addTab("Source", jPanel1);

        jLabel7.setText("Path");

        jtxtPath.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jtxtPathActionPerformed(evt);
            }
        });

        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        buttonGroup1.add(jrbtNewFile);
        jrbtNewFile.setText("New File");

        buttonGroup1.add(jrbtExistingFile);
        jrbtExistingFile.setText("Existing File");

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jrbtNewFile)
                .addGap(32, 32, 32)
                .addComponent(jrbtExistingFile)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jrbtExistingFile)
                    .addComponent(jrbtNewFile))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jLabel8.setText("Dataset");

        jtxtDataSetName.setText("VisTrails");

        jLabel9.setText("Dataset Id");

        jtxtDataSetId.setText("3");

        jbtnLoadFolder.setText("...");
        jbtnLoadFolder.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnLoadFolderActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jtxtPath, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel7)
                                    .addGroup(jPanel2Layout.createSequentialGroup()
                                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                            .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .addComponent(jtxtDataSetId))
                                        .addGap(18, 18, 18)
                                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jtxtDataSetName, javax.swing.GroupLayout.PREFERRED_SIZE, 308, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(jLabel8))))
                                .addGap(0, 2, Short.MAX_VALUE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jbtnLoadFolder, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9)
                    .addComponent(jLabel8))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jtxtDataSetId, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jtxtDataSetName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(29, 29, 29)
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel7)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jbtnLoadFolder)
                    .addComponent(jtxtPath, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(42, 42, 42))
        );

        jTabbedPane2.addTab("Destination", jPanel2);

        jbtnGenerate.setText("Generate");
        jbtnGenerate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnGenerateActionPerformed(evt);
            }
        });

        jbtnClose.setText("Close");
        jbtnClose.setMaximumSize(new java.awt.Dimension(85, 25));
        jbtnClose.setMinimumSize(new java.awt.Dimension(85, 25));
        jbtnClose.setPreferredSize(new java.awt.Dimension(85, 25));
        jbtnClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnCloseActionPerformed(evt);
            }
        });

        jlblTimeSpent.setText("Time Spent");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jTabbedPane2)
                .addContainerGap())
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addGap(142, 142, 142))
            .addGroup(layout.createSequentialGroup()
                .addGap(137, 137, 137)
                .addComponent(jbtnGenerate)
                .addGap(18, 18, 18)
                .addComponent(jbtnClose, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jlblTimeSpent)
                .addGap(33, 33, 33))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jTabbedPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 272, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jbtnGenerate)
                    .addComponent(jbtnClose, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jlblTimeSpent))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jTabbedPane2.getAccessibleContext().setAccessibleName("Source");

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jtxtDatabaseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jtxtDatabaseActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jtxtDatabaseActionPerformed

    private void jbtnGenerateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnGenerateActionPerformed
        long beginTime = 0, endTime = 0;   
        float timeSpent = 0.0f;
        beginTime = System.currentTimeMillis();           
               
        try {        
            generateFacts();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(JfrmPrincipal.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(JfrmPrincipal.class.getName()).log(Level.SEVERE, null, ex);
        }
                       
        endTime = System.currentTimeMillis();                       
        timeSpent = endTime - beginTime;
        jlblTimeSpent.setText(Float.toString(timeSpent/1000));
        JOptionPane.showMessageDialog(null, "File generated successfully!");        
        
        
    }//GEN-LAST:event_jbtnGenerateActionPerformed

    private void jbnTestConnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbnTestConnActionPerformed
           
        if(createConnection()!=null)
            JOptionPane.showMessageDialog(null, "Connected successfully!");
        else
            JOptionPane.showMessageDialog(null, "Not Connected!");        
    }//GEN-LAST:event_jbnTestConnActionPerformed

    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
        closeConnection();
    }//GEN-LAST:event_formWindowClosed

    private void jbtnCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnCloseActionPerformed
        dispose();
    }//GEN-LAST:event_jbtnCloseActionPerformed

    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
        closeConnection();
    }//GEN-LAST:event_formWindowClosing

    private void jbtnLoadFolderActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnLoadFolderActionPerformed
        JFileChooser file = new JFileChooser(); 
          file.setFileSelectionMode(JFileChooser.FILES_ONLY);
          int i= file.showSaveDialog(null);
        if (i==1){
            jtxtPath.setText("");
        } else {
            File  archive = file.getSelectedFile();
           jtxtPath.setText(archive.getPath());
        }
    }//GEN-LAST:event_jbtnLoadFolderActionPerformed

    private void jtxtPathActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jtxtPathActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jtxtPathActionPerformed
    
    public Connection createConnection(){
        String hostname = jtxtHostname.getText();
        String port  = jtxtPort.getText();
        String database = jtxtDatabase.getText(); 
        String username = jtxtUsername.getText();
        String password = jpwPass.getText();
        try {
            ConnectionDB.setHostname(hostname);
            ConnectionDB.setPort(port);
            ConnectionDB.setDatabase(database);
            ConnectionDB.setUsername(username);
            ConnectionDB.setPassword(password); 
            return new ConnectionDB().getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(JfrmPrincipal.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return null;        
    }
    /**
     * @param args the command line arguments
     */
    public static void main(String [] args){
        JfrmPrincipal jfrmPrincipal = new JfrmPrincipal();
        jfrmPrincipal.setVisible(true);    
        jfrmPrincipal.setLocationRelativeTo(null);
        jfrmPrincipal.setTitle("Integrated Provenance  Analysis");
        jfrmPrincipal.jrbtExistingFile.setSelected(true);        
    }
    
    public void generateFacts()throws ClassNotFoundException, SQLException { 
        
        //Salvar conexao em arquivo texto com delimitador ou xml
        //Gerar automaticamente o id do dataset() (precisa ler o arquivo de fatos prolog)        
    
        StringBuffer output;
        FileWriter writer;  
        
        String discontigous =   ":- discontiguous(dataSet/2).\n" +
                                ":- discontiguous(hasDataSet/2).\n" +
                                ":- discontiguous(hadDataSet/2).\n" +
                                ":- discontiguous(entity/2).\n" +
                                ":- discontiguous(activity/2).\n" +
                                ":- discontiguous(agent/2).\n" +
                                ":- discontiguous(hasInPort/2).\n" +
                                ":- discontiguous(hasOutPort/2).\n" +
                                ":- discontiguous(hadInPort/2).\n" +
                                ":- discontiguous(hadOutPort/2).\n" +
                                ":- discontiguous(hasDefaultParam/2).\n" +
                                ":- discontiguous(hasSubProgram/2).\n" +
                                ":- discontiguous(hadPlan/2).\n" +
                                ":- discontiguous(used/2).\n" +
                                ":- discontiguous(wasPartOf/2).\n" +
                                ":- discontiguous(wasGeneratedBy/2).\n" +
                                ":- discontiguous(wasInformedBy/2).\n" +
                                ":- discontiguous(wasPartOf/2).\n" +
                                ":- discontiguous(wasAssociatedWith/2).\n";
                
        String dataSetId = jtxtDataSetId.getText();
        String dataSetName = jtxtDataSetName.getText();
        String file = jtxtPath.getText();
        if(!file.substring(file.length()-3).equals(".pl"))
            file += ".pl";
        
        createConnection();
           
        output = new StringBuffer();
               
        if(jrbtNewFile.isSelected())
            output.append(discontigous);
        else
            output.append("\n");
        
        output.append("dataSet(");
        output.append(dataSetId);
        output.append(",'");
        output.append(dataSetName);
        output.append("').\n");

        new Workflow(output);  
        new Program(output);
        new Port(output);
        new Execution(output);
        new WExecution(output);
        new Data(output);
        new Visualization(output);
        new HasPort(output);
        new HadPlan(output);
        new HadPort(output);
        new HasDefaultParam(output);
        new HasSubProgram(output);
        new Used(output);
        //There is no information about wasGeneratedBy
        //new WasGeneratedBy(output);
        new WasPartOf(output);
        new WasAssociatedWith(output);        
        new WasInformedBy(output);
        new User(output);
        
            try {
                FileManager fileManager = new FileManager();
                if(jrbtExistingFile.isSelected())
                    writer = fileManager.getWriter(file, true); //path, append (true) or new file (false)  
                else
                    writer = fileManager.getWriter(file, false); //path, append (true) or new file (false)  
                writer.write(output.substring(0, output.length()-1));
                writer.close();                 
            } catch(IOException e) {
                e.printStackTrace();
            }         
    }
    
    public void closeConnection(){
        try{
            createConnection().close();
        } catch(SQLException e){
            System.out.println(e);
        }        
    }
    
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTabbedPane jTabbedPane2;
    private javax.swing.JButton jbnTestConn;
    private javax.swing.JButton jbtnClose;
    private javax.swing.JButton jbtnGenerate;
    private javax.swing.JButton jbtnLoadFolder;
    private javax.swing.JLabel jlblDatabase;
    private javax.swing.JLabel jlblTimeSpent;
    private javax.swing.JPasswordField jpwPass;
    private javax.swing.JRadioButton jrbtExistingFile;
    private javax.swing.JRadioButton jrbtNewFile;
    private javax.swing.JTextField jtxtDataSetId;
    private javax.swing.JTextField jtxtDataSetName;
    private javax.swing.JTextField jtxtDatabase;
    private javax.swing.JTextField jtxtHostname;
    private javax.swing.JTextField jtxtPath;
    private javax.swing.JTextField jtxtPort;
    private javax.swing.JTextField jtxtUsername;
    // End of variables declaration//GEN-END:variables
}
