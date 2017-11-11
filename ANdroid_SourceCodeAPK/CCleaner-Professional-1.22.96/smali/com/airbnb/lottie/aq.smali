.class final Lcom/airbnb/lottie/aq;
.super Lcom/airbnb/lottie/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/v",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/airbnb/lottie/be;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/be;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/lottie/v;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/airbnb/lottie/aq;->a:Landroid/content/res/Resources;

    .line 13
    iput-object p2, p0, Lcom/airbnb/lottie/aq;->b:Lcom/airbnb/lottie/be;

    .line 14
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 7
    check-cast p1, [Lorg/json/JSONObject;

    .line 2017
    iget-object v0, p0, Lcom/airbnb/lottie/aq;->a:Landroid/content/res/Resources;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/av$a;->a(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/av;

    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lcom/airbnb/lottie/av;

    .line 1021
    iget-object v0, p0, Lcom/airbnb/lottie/aq;->b:Lcom/airbnb/lottie/be;

    invoke-interface {v0, p1}, Lcom/airbnb/lottie/be;->a(Lcom/airbnb/lottie/av;)V

    .line 7
    return-void
.end method
