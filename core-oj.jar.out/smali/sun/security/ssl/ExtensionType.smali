.class final Lsun/security/ssl/ExtensionType;
.super Ljava/lang/Object;
.source "HelloExtensions.java"


# static fields
.field static final EXT_CERT_TYPE:Lsun/security/ssl/ExtensionType;

.field static final EXT_CLIENT_CERTIFICATE_URL:Lsun/security/ssl/ExtensionType;

.field static final EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

.field static final EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

.field static final EXT_MAX_FRAGMENT_LENGTH:Lsun/security/ssl/ExtensionType;

.field static final EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

.field static final EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

.field static final EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

.field static final EXT_SRP:Lsun/security/ssl/ExtensionType;

.field static final EXT_STATUS_REQUEST:Lsun/security/ssl/ExtensionType;

.field static final EXT_TRUNCATED_HMAC:Lsun/security/ssl/ExtensionType;

.field static final EXT_TRUSTED_CA_KEYS:Lsun/security/ssl/ExtensionType;

.field static final EXT_USER_MAPPING:Lsun/security/ssl/ExtensionType;

.field static knownExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/ExtensionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final id:I

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lsun/security/ssl/ExtensionType;->knownExtensions:Ljava/util/List;

    .line 191
    const-string/jumbo v0, "server_name"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 190
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    .line 193
    const-string/jumbo v0, "max_fragment_length"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 192
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_MAX_FRAGMENT_LENGTH:Lsun/security/ssl/ExtensionType;

    .line 195
    const-string/jumbo v0, "client_certificate_url"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 194
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_CLIENT_CERTIFICATE_URL:Lsun/security/ssl/ExtensionType;

    .line 197
    const-string/jumbo v0, "trusted_ca_keys"

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 196
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_TRUSTED_CA_KEYS:Lsun/security/ssl/ExtensionType;

    .line 199
    const-string/jumbo v0, "truncated_hmac"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 198
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_TRUNCATED_HMAC:Lsun/security/ssl/ExtensionType;

    .line 201
    const-string/jumbo v0, "status_request"

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 200
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_STATUS_REQUEST:Lsun/security/ssl/ExtensionType;

    .line 205
    const-string/jumbo v0, "user_mapping"

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 204
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_USER_MAPPING:Lsun/security/ssl/ExtensionType;

    .line 209
    const-string/jumbo v0, "cert_type"

    invoke-static {v2, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 208
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_CERT_TYPE:Lsun/security/ssl/ExtensionType;

    .line 213
    const-string/jumbo v0, "elliptic_curves"

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 212
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    .line 215
    const-string/jumbo v0, "ec_point_formats"

    const/16 v1, 0xb

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 214
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    .line 219
    const-string/jumbo v0, "srp"

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 218
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_SRP:Lsun/security/ssl/ExtensionType;

    .line 223
    const-string/jumbo v0, "signature_algorithms"

    const/16 v1, 0xd

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 222
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    .line 227
    const-string/jumbo v0, "renegotiation_info"

    const v1, 0xff01

    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 226
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    .line 158
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lsun/security/ssl/ExtensionType;->id:I

    .line 165
    iput-object p2, p0, Lsun/security/ssl/ExtensionType;->name:Ljava/lang/String;

    .line 163
    return-void
.end method

.method private static e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;
    .locals 2
    .param p0, "id"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Lsun/security/ssl/ExtensionType;

    invoke-direct {v0, p0, p1}, Lsun/security/ssl/ExtensionType;-><init>(ILjava/lang/String;)V

    .line 185
    .local v0, "ext":Lsun/security/ssl/ExtensionType;
    sget-object v1, Lsun/security/ssl/ExtensionType;->knownExtensions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-object v0
.end method

.method static get(I)Lsun/security/ssl/ExtensionType;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 175
    sget-object v2, Lsun/security/ssl/ExtensionType;->knownExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/ExtensionType;

    .line 176
    .local v0, "ext":Lsun/security/ssl/ExtensionType;
    iget v2, v0, Lsun/security/ssl/ExtensionType;->id:I

    if-ne v2, p0, :cond_0

    .line 177
    return-object v0

    .line 180
    .end local v0    # "ext":Lsun/security/ssl/ExtensionType;
    :cond_1
    new-instance v2, Lsun/security/ssl/ExtensionType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lsun/security/ssl/ExtensionType;-><init>(ILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/ssl/ExtensionType;->name:Ljava/lang/String;

    return-object v0
.end method
