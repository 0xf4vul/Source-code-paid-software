.class final Lcom/google/android/gms/internal/xf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/xf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/zzqh;

.field final synthetic c:Lcom/google/android/gms/internal/xf$a;

.field final synthetic d:Lcom/google/android/gms/internal/ej;

.field final synthetic e:Lcom/google/android/gms/ads/internal/e;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/google/android/gms/internal/xf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xf;Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/xf$a;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/ads/internal/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xf$1;->g:Lcom/google/android/gms/internal/xf;

    iput-object p2, p0, Lcom/google/android/gms/internal/xf$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/xf$1;->b:Lcom/google/android/gms/internal/zzqh;

    iput-object p4, p0, Lcom/google/android/gms/internal/xf$1;->c:Lcom/google/android/gms/internal/xf$a;

    iput-object p5, p0, Lcom/google/android/gms/internal/xf$1;->d:Lcom/google/android/gms/internal/ej;

    iput-object p6, p0, Lcom/google/android/gms/internal/xf$1;->e:Lcom/google/android/gms/ads/internal/e;

    iput-object p7, p0, Lcom/google/android/gms/internal/xf$1;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xf$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/xf$1;->b:Lcom/google/android/gms/internal/zzqh;

    iget-object v2, p0, Lcom/google/android/gms/internal/xf$1;->c:Lcom/google/android/gms/internal/xf$a;

    iget-object v3, p0, Lcom/google/android/gms/internal/xf$1;->d:Lcom/google/android/gms/internal/ej;

    iget-object v4, p0, Lcom/google/android/gms/internal/xf$1;->e:Lcom/google/android/gms/ads/internal/e;

    .line 2000
    new-instance v5, Lcom/google/android/gms/internal/xg;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/google/android/gms/internal/xg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/ads/internal/e;)V

    iput-object v5, v2, Lcom/google/android/gms/internal/xf$a;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/xf$2;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/xf$2;-><init>(Lcom/google/android/gms/internal/xf$a;)V

    invoke-interface {v5, v0}, Lcom/google/android/gms/internal/xe;->a(Lcom/google/android/gms/internal/xe$a;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xf$1;->f:Ljava/lang/String;

    invoke-interface {v5, v0}, Lcom/google/android/gms/internal/xe;->b(Ljava/lang/String;)V

    return-void
.end method
