.class public Lcom/android/incallui/TransferManager;
.super Landroid/app/Activity;
.source "TransferManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/TransferManager$TransferDialog;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final MAX_NUMBER_LENGTH:I = 0x64

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static final PICK_CONTACT_NUMBER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TransferManager"

.field private static sInstance:Lcom/android/incallui/TransferManager;


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mBlindTransferNumber:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mInputField:Landroid/widget/AutoCompleteTextView;

.field private mListView:Landroid/widget/ListView;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSecondaryNameTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/TransferManager;->NUM_PROJECTION:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/TransferManager;->sInstance:Lcom/android/incallui/TransferManager;

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/incallui/TransferManager;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 57
    sget-object v0, Lcom/android/incallui/TransferManager;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/TransferManager;->mBlindTransferNumber:Ljava/lang/String;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/TransferManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/TransferManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/TransferManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/TransferManager;Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/TransferManager;
    .param p1, "x1"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/TransferManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/TransferManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/TransferManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/TransferManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mSecondaryNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/incallui/TransferManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/TransferManager;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/incallui/TransferManager;->mSecondaryNameTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/TransferManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mSearchButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/incallui/TransferManager;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/TransferManager;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/incallui/TransferManager;->mSearchButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$500()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/incallui/TransferManager;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/TransferManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/TransferManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/incallui/TransferManager;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 251
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    return-void
.end method

.method private shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 3
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v2, :cond_0

    if-nez p2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 109
    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 113
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    const-string v7, ""

    .line 115
    .local v7, "output":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/TransferManager;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    :cond_0
    const-string v0, "TransferManager"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-void

    .line 121
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/TransferManager;->mBlindTransferNumber:Ljava/lang/String;

    .line 123
    if-eqz v7, :cond_1

    .line 124
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v9, :cond_4

    .line 125
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v7}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 136
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    const-string v0, "TransferManager"

    const-string v1, "onActivityResult: cancelled."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iput-object p0, p0, Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/incallui/TransferManager;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 75
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/incallui/TransferManager;->showTransferDialog()V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "TransferManager"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 147
    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 95
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/TransferManager;->shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 98
    :cond_0
    return-void
.end method

.method showTransferDialog()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v1, p0, Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/TransferManager$TransferDialog;-><init>(Lcom/android/incallui/TransferManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    .line 83
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/incallui/TransferManager$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/TransferManager$1;-><init>(Lcom/android/incallui/TransferManager;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 90
    return-void
.end method
