.class final Lcom/google/android/gms/internal/aaz$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aaz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/aay;Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xh;

.field final synthetic b:Lcom/google/android/gms/internal/abb;

.field final synthetic c:Lcom/google/android/gms/internal/ul;

.field final synthetic d:Lcom/google/android/gms/internal/uj;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/abb;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/internal/uj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aaz$2;->a:Lcom/google/android/gms/internal/xh;

    iput-object p2, p0, Lcom/google/android/gms/internal/aaz$2;->b:Lcom/google/android/gms/internal/abb;

    iput-object p3, p0, Lcom/google/android/gms/internal/aaz$2;->c:Lcom/google/android/gms/internal/ul;

    iput-object p4, p0, Lcom/google/android/gms/internal/aaz$2;->d:Lcom/google/android/gms/internal/uj;

    iput-object p5, p0, Lcom/google/android/gms/internal/aaz$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aaz$2;->a:Lcom/google/android/gms/internal/xh;

    .line 1000
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xh;->b(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$c;

    move-result-object v0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/aaz$2;->b:Lcom/google/android/gms/internal/abb;

    .line 2000
    iput-object v0, v1, Lcom/google/android/gms/internal/abb;->e:Lcom/google/android/gms/internal/xh$c;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/aaz$2;->c:Lcom/google/android/gms/internal/ul;

    iget-object v2, p0, Lcom/google/android/gms/internal/aaz$2;->d:Lcom/google/android/gms/internal/uj;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "rwc"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ul;->a(Lcom/google/android/gms/internal/uj;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/aaz$2;->c:Lcom/google/android/gms/internal/ul;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ul;->a()Lcom/google/android/gms/internal/uj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/aaz$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/aaz$2$1;-><init>(Lcom/google/android/gms/internal/aaz$2;Lcom/google/android/gms/internal/uj;)V

    new-instance v1, Lcom/google/android/gms/internal/aaz$2$2;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aaz$2$2;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/xh$c;->a(Lcom/google/android/gms/internal/aek$c;Lcom/google/android/gms/internal/aek$a;)V

    return-void
.end method
