using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using ChatDemoExam.DataBaseModel;
using ChatDemoExam.Classes;
namespace ChatDemoExam.Windows
{
    /// <summary>
    /// Логика взаимодействия для ChangeTopicWindow.xaml
    /// </summary>
    public partial class ChangeTopicWindow : Window
    {

        public ChangeTopicWindow(Chatroom namechat)
        {
            InitializeComponent();

            this.DataContext = namechat;
            
        }

        private void BTNSave_Click(object sender, RoutedEventArgs e)
        {
            ConnectingClass.connect.SaveChanges();
            MessageBox.Show("Saved!");
            this.Close();
        }
    }
}
