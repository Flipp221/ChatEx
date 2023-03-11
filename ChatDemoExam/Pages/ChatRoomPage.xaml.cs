using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ChatDemoExam.Classes;
using ChatDemoExam.DataBaseModel;
using ChatDemoExam.Pages;
using ChatDemoExam.Windows;


namespace ChatDemoExam.Pages
{
    /// <summary>
    /// Логика взаимодействия для ChatRoomPage.xaml
    /// </summary>
    public partial class ChatRoomPage : Page
    {
        public Chatroom currentChatroom;
        public ChatMessage message;
        public Employee employee;
        public EmployeeChat roomChat;
        public ChatRoomPage(Chatroom chatroom)
        {
            InitializeComponent();
            var idnamechatroom = chatroom.Id_Chatroom;

            LvUser.ItemsSource = ConnectingClass.connect.EmployeeChat.Where(z=>z.Chatroom_Id == idnamechatroom).ToList();
                
            currentChatroom = chatroom;
            this.DataContext = currentChatroom;
            LvMessages.ItemsSource = ConnectingClass.connect.ChatMessage.Where(z => z.Chatroom_Id == chatroom.Id_Chatroom).ToList();
        }

        private void Refreshmessage()
        {
            LvMessages.ItemsSource = ConnectingClass.connect.ChatMessage.Where(z => z.Chatroom_Id == currentChatroom.Id_Chatroom).ToList();
        }
        private void BtnAddUser_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void BtnChangeTopic_Click(object sender, RoutedEventArgs e)
        {
            ChangeTopicWindow changeTopic = new ChangeTopicWindow(currentChatroom);
            changeTopic.Show(); 
        }
        private void BtnSend_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(TxtMessage.Text))
            {
                MessageBox.Show("You can't send an empty message!!!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                var message = new ChatMessage()
                {
                    Sender_Id = MainWindow.emp.Id_Employee,
                    Chatroom_Id = currentChatroom.Id_Chatroom,
                    Date = DateTime.Now,
                    Message = TxtMessage.Text,
                };
                ConnectingClass.connect.ChatMessage.Add(message);
                ConnectingClass.connect.SaveChanges();
                Refreshmessage();            
                TxtMessage.Text = "";
            }
          
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
