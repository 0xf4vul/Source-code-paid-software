.class public final Lcom/google/android/gms/ads/internal/l;
.super Lcom/google/android/gms/internal/su$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ss;

.field private b:Lcom/google/android/gms/internal/vo;

.field private c:Lcom/google/android/gms/internal/vp;

.field private d:Landroid/support/v4/h/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vq;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v4/h/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vr;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/zzhc;

.field private g:Lcom/google/android/gms/internal/ta;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/android/gms/internal/ya;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/android/gms/internal/zzqh;

.field private final l:Lcom/google/android/gms/ads/internal/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/su$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/l;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/l;->i:Lcom/google/android/gms/internal/ya;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/l;->k:Lcom/google/android/gms/internal/zzqh;

    new-instance v0, Landroid/support/v4/h/k;

    invoke-direct {v0}, Landroid/support/v4/h/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/l;->e:Landroid/support/v4/h/k;

    new-instance v0, Landroid/support/v4/h/k;

    invoke-direct {v0}, Landroid/support/v4/h/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/l;->d:Landroid/support/v4/h/k;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/l;->l:Lcom/google/android/gms/ads/internal/e;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/st;
    .locals 13

    new-instance v0, Lcom/google/android/gms/ads/internal/k;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/l;->i:Lcom/google/android/gms/internal/ya;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/l;->k:Lcom/google/android/gms/internal/zzqh;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/l;->a:Lcom/google/android/gms/internal/ss;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/l;->b:Lcom/google/android/gms/internal/vo;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/l;->c:Lcom/google/android/gms/internal/vp;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/l;->e:Landroid/support/v4/h/k;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/l;->d:Landroid/support/v4/h/k;

    iget-object v10, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/internal/zzhc;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/l;->g:Lcom/google/android/gms/internal/ta;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/l;->l:Lcom/google/android/gms/ads/internal/e;

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/ads/internal/k;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/vo;Lcom/google/android/gms/internal/vp;Landroid/support/v4/h/k;Landroid/support/v4/h/k;Lcom/google/android/gms/internal/zzhc;Lcom/google/android/gms/internal/ta;Lcom/google/android/gms/ads/internal/e;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ss;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->a:Lcom/google/android/gms/internal/ss;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ta;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->g:Lcom/google/android/gms/internal/ta;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/vo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->b:Lcom/google/android/gms/internal/vo;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/vp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->c:Lcom/google/android/gms/internal/vp;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzhc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/internal/zzhc;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/vr;Lcom/google/android/gms/internal/vq;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->e:Landroid/support/v4/h/k;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/h/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->d:Landroid/support/v4/h/k;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/h/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
