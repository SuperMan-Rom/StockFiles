.class Lcom/android/incallui/StatusBarNotifier$8;
.super Landroid/os/AsyncTask;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/StatusBarNotifier;->makeNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;

.field final synthetic val$allowFullScreenIntent:Z

.field final synthetic val$call:Lcom/android/incallui/Call;

.field final synthetic val$entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/StatusBarNotifier;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$8;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier$8;->val$call:Lcom/android/incallui/Call;

    iput-object p3, p0, Lcom/android/incallui/StatusBarNotifier$8;->val$entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-boolean p4, p0, Lcom/android/incallui/StatusBarNotifier$8;->val$allowFullScreenIntent:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 736
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/StatusBarNotifier$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$8;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$8;->val$call:Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier$8;->val$entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier$8;->val$allowFullScreenIntent:Z

    # invokes: Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/StatusBarNotifier;->access$800(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 740
    const/4 v0, 0x0

    return-object v0
.end method
