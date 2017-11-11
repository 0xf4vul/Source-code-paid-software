.class final Lcom/google/android/gms/ads/internal/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/h;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;ZLcom/google/android/gms/internal/acy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xh;

.field final synthetic b:Lcom/google/android/gms/internal/wb;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/wb;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/h$2;->a:Lcom/google/android/gms/internal/xh;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/h$2;->b:Lcom/google/android/gms/internal/wb;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/h$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/h$2;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/h$2;->e:Z

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/h$2;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h$2;->a:Lcom/google/android/gms/internal/xh;

    .line 1000
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xh;->b(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$c;

    move-result-object v0

    .line 0
    new-instance v1, Lcom/google/android/gms/ads/internal/h$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/h$2$1;-><init>(Lcom/google/android/gms/ads/internal/h$2;)V

    new-instance v2, Lcom/google/android/gms/internal/aek$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/aek$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/xh$c;->a(Lcom/google/android/gms/internal/aek$c;Lcom/google/android/gms/internal/aek$a;)V

    return-void
.end method
