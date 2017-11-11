.class final Lcom/google/android/gms/internal/aau$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aau;->a(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/aau;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aau;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aau$2;->c:Lcom/google/android/gms/internal/aau;

    iput-object p2, p0, Lcom/google/android/gms/internal/aau$2;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/aau$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aau$2;->c:Lcom/google/android/gms/internal/aau;

    invoke-static {}, Lcom/google/android/gms/internal/aau;->e()Lcom/google/android/gms/internal/xh;

    move-result-object v1

    .line 1000
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/xh;->b(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$c;

    move-result-object v1

    .line 0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aau;->a(Lcom/google/android/gms/internal/aau;Lcom/google/android/gms/internal/xh$c;)Lcom/google/android/gms/internal/xh$c;

    iget-object v0, p0, Lcom/google/android/gms/internal/aau$2;->c:Lcom/google/android/gms/internal/aau;

    invoke-static {v0}, Lcom/google/android/gms/internal/aau;->b(Lcom/google/android/gms/internal/aau;)Lcom/google/android/gms/internal/xh$c;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/aau$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/aau$2$1;-><init>(Lcom/google/android/gms/internal/aau$2;)V

    new-instance v2, Lcom/google/android/gms/internal/aau$2$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/aau$2$2;-><init>(Lcom/google/android/gms/internal/aau$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/xh$c;->a(Lcom/google/android/gms/internal/aek$c;Lcom/google/android/gms/internal/aek$a;)V

    return-void
.end method
