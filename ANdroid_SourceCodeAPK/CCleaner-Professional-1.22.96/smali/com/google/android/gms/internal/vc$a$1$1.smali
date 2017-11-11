.class final Lcom/google/android/gms/internal/vc$a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aes$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/vc$a$1;->a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/android/gms/internal/vc$a$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vc$a$1;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/vc$a$1$1;->b:Lcom/google/android/gms/internal/vc$a$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/vc$a$1$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Z)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/vc$a$1$1;->b:Lcom/google/android/gms/internal/vc$a$1;

    iget-object v1, v0, Lcom/google/android/gms/internal/vc$a$1;->b:Lcom/google/android/gms/internal/vc$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/vc$a$1$1;->a:Ljava/util/Map;

    const-string/jumbo v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1000
    iput-object v0, v1, Lcom/google/android/gms/internal/vc$a;->b:Ljava/lang/String;

    .line 0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "messageType"

    const-string/jumbo v2, "htmlLoaded"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/vc$a$1$1;->b:Lcom/google/android/gms/internal/vc$a$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/vc$a$1;->b:Lcom/google/android/gms/internal/vc$a;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/vc$a;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/vc$a$1$1;->b:Lcom/google/android/gms/internal/vc$a$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/vc$a$1;->a:Lcom/google/android/gms/internal/xi;

    const-string/jumbo v2, "sendMessageToNativeJs"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/xi;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
