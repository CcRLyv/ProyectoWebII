﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProyectoWebII.ServiceReferenceUsuarios {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReferenceUsuarios.ServicioWebUsuariosSoap")]
    public interface ServicioWebUsuariosSoap {
        
        // CODEGEN: Se está generando un contrato de mensaje, ya que el nombre de elemento correo del espacio de nombres http://tempuri.org/ no está marcado para aceptar valores nil.
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/addUser", ReplyAction="*")]
        ProyectoWebII.ServiceReferenceUsuarios.addUserResponse addUser(ProyectoWebII.ServiceReferenceUsuarios.addUserRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/addUser", ReplyAction="*")]
        System.Threading.Tasks.Task<ProyectoWebII.ServiceReferenceUsuarios.addUserResponse> addUserAsync(ProyectoWebII.ServiceReferenceUsuarios.addUserRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class addUserRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="addUser", Namespace="http://tempuri.org/", Order=0)]
        public ProyectoWebII.ServiceReferenceUsuarios.addUserRequestBody Body;
        
        public addUserRequest() {
        }
        
        public addUserRequest(ProyectoWebII.ServiceReferenceUsuarios.addUserRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class addUserRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string correo;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string pass;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=2)]
        public string nombre;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=3)]
        public string apellido;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=4)]
        public string telefono;
        
        public addUserRequestBody() {
        }
        
        public addUserRequestBody(string correo, string pass, string nombre, string apellido, string telefono) {
            this.correo = correo;
            this.pass = pass;
            this.nombre = nombre;
            this.apellido = apellido;
            this.telefono = telefono;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class addUserResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="addUserResponse", Namespace="http://tempuri.org/", Order=0)]
        public ProyectoWebII.ServiceReferenceUsuarios.addUserResponseBody Body;
        
        public addUserResponse() {
        }
        
        public addUserResponse(ProyectoWebII.ServiceReferenceUsuarios.addUserResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class addUserResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public bool addUserResult;
        
        public addUserResponseBody() {
        }
        
        public addUserResponseBody(bool addUserResult) {
            this.addUserResult = addUserResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ServicioWebUsuariosSoapChannel : ProyectoWebII.ServiceReferenceUsuarios.ServicioWebUsuariosSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ServicioWebUsuariosSoapClient : System.ServiceModel.ClientBase<ProyectoWebII.ServiceReferenceUsuarios.ServicioWebUsuariosSoap>, ProyectoWebII.ServiceReferenceUsuarios.ServicioWebUsuariosSoap {
        
        public ServicioWebUsuariosSoapClient() {
        }
        
        public ServicioWebUsuariosSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ServicioWebUsuariosSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServicioWebUsuariosSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServicioWebUsuariosSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        ProyectoWebII.ServiceReferenceUsuarios.addUserResponse ProyectoWebII.ServiceReferenceUsuarios.ServicioWebUsuariosSoap.addUser(ProyectoWebII.ServiceReferenceUsuarios.addUserRequest request) {
            return base.Channel.addUser(request);
        }
        
        public bool addUser(string correo, string pass, string nombre, string apellido, string telefono) {
            ProyectoWebII.ServiceReferenceUsuarios.addUserRequest inValue = new ProyectoWebII.ServiceReferenceUsuarios.addUserRequest();
            inValue.Body = new ProyectoWebII.ServiceReferenceUsuarios.addUserRequestBody();
            inValue.Body.correo = correo;
            inValue.Body.pass = pass;
            inValue.Body.nombre = nombre;
            inValue.Body.apellido = apellido;
            inValue.Body.telefono = telefono;
            ProyectoWebII.ServiceReferenceUsuarios.addUserResponse retVal = ((ProyectoWebII.ServiceReferenceUsuarios.ServicioWebUsuariosSoap)(this)).addUser(inValue);
            return retVal.Body.addUserResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<ProyectoWebII.ServiceReferenceUsuarios.addUserResponse> ProyectoWebII.ServiceReferenceUsuarios.ServicioWebUsuariosSoap.addUserAsync(ProyectoWebII.ServiceReferenceUsuarios.addUserRequest request) {
            return base.Channel.addUserAsync(request);
        }
        
        public System.Threading.Tasks.Task<ProyectoWebII.ServiceReferenceUsuarios.addUserResponse> addUserAsync(string correo, string pass, string nombre, string apellido, string telefono) {
            ProyectoWebII.ServiceReferenceUsuarios.addUserRequest inValue = new ProyectoWebII.ServiceReferenceUsuarios.addUserRequest();
            inValue.Body = new ProyectoWebII.ServiceReferenceUsuarios.addUserRequestBody();
            inValue.Body.correo = correo;
            inValue.Body.pass = pass;
            inValue.Body.nombre = nombre;
            inValue.Body.apellido = apellido;
            inValue.Body.telefono = telefono;
            return ((ProyectoWebII.ServiceReferenceUsuarios.ServicioWebUsuariosSoap)(this)).addUserAsync(inValue);
        }
    }
}
