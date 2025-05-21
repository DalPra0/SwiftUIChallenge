import SwiftUI

struct Untitled: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rememberPassword: Bool = true
    @State private var showEmailPassword = false
    @State private var showPasswordField = false
    
    var criarContaCor: Color {
        if password == "" {
            return .criarContaCinza
        } else{
            return .roxo
        }
    }
    
    var criarContaCorTexto: Color {
        if password == "" {
            return .cinzaTexto
        } else{
            return .white
        }
    }
    
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    .azulMaisClaro,
                    .azulEscuro
                ]),
                startPoint: .bottom,
                endPoint: .top
            )
            .ignoresSafeArea()
            
            VStack(spacing: 0) {
                VStack(spacing: 10) {
                    Spacer()
                    
                    HStack(spacing: 8) {
                        Image(systemName: "moon.stars.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
                            .foregroundColor(.white)
                            .opacity(50/100)
                        
                        VStack(alignment: .leading, spacing: -25) {
                            Text("EDNA")
                                .font(.system(size: 64, weight: .black))
                                .foregroundColor(.white)
                                .italic()
                            Text("APP")
                                .font(.system(size: 64, weight: .black))
                                .foregroundColor(.white)
                                .italic()
                        }
                        
                        Spacer()
                    }
                    .padding(.horizontal, 60)
                    
                    Spacer()
                }
                .frame(height: 180)
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Crie sua conta")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 25)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("E-Mail")
                            .foregroundColor(.secondary)
                        
                        HStack {
                            TextField("Insira seu e-mail", text: $email)
                            
                            Button(action: {
                                showEmailPassword.toggle()
                            }) {
                                Image(systemName: "eye")
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(12)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )
                    }
                    
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Text("Senha")
                                .foregroundColor(.secondary)
                            
                            Spacer()
                            
                            Button("Recuperar senha") {
                            }
                            .font(.footnote)
                            .foregroundColor(.blue)
                        }
                        
                        HStack {
                            if showPasswordField {
                                TextField("Insira sua senha", text: $password)
                            } else {
                                SecureField("Insira sua senha", text: $password)
                            }
                            
                            Button(action: {
                                showPasswordField.toggle()
                            }) {
                                Image(systemName: "eye")
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(12)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )
                    }
                    
                    Toggle("Lembrar minha senha", isOn: $rememberPassword)
                    
                    Button(action: {
                    }) {
                        Text("Criar conta")
                            .fontWeight(.semibold)
                            .foregroundColor(criarContaCorTexto)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 15)
                            .background(criarContaCor)
                            .cornerRadius(10)
                    }
                    .padding(.top, 5)
                    
                    Button(action: {
                    }) {
                        HStack {
                            Image(systemName: "apple.logo")
                                .foregroundColor(.white)
                            Text("Continuar com Apple")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 15)
                        .background(Color.black)
                        .cornerRadius(10)
                    }
                    .padding(.top, 5)
                    
                    HStack {
                        Spacer()
                        Text("Já possui uma conta?")
                            .foregroundColor(.secondary)
                        
                        Button("Entre") {
                        }
                        .foregroundColor(.blue)
                        Spacer()
                    }
                    .padding(.top, 10)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 30)
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 30))
            }
        }
    }
}




#Preview {
    Untitled()
}
