.class public Lcom/google/android/gms/internal/gt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/k;


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "userId"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "providerId"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "displayName"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "photoUrl"
    .end annotation
.end field

.field private e:Landroid/net/Uri;
    .annotation runtime Lcom/google/android/gms/internal/gb;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "email"
    .end annotation
.end field

.field private g:Z
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "isEmailVerified"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "rawUserInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbmj;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbmj;->b:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/gt;->b:Ljava/lang/String;

    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbmj;->c:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->f:Ljava/lang/String;

    .line 3000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbmj;->e:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->c:Ljava/lang/String;

    .line 4000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbmj;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbmj;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 0
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/gt;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->e:Landroid/net/Uri;

    .line 5000
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzbmj;->d:Z

    .line 0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gt;->g:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/gt;->h:Ljava/lang/String;

    return-void

    :cond_1
    move-object v0, v1

    .line 4000
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbmp;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbmp;->b:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->a:Ljava/lang/String;

    .line 7000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbmp;->e:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->b:Ljava/lang/String;

    .line 8000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbmp;->c:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->c:Ljava/lang/String;

    .line 9000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbmp;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbmp;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 0
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/gt;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->e:Landroid/net/Uri;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/gt;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gt;->g:Z

    .line 10000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbmp;->f:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->h:Ljava/lang/String;

    return-void

    :cond_1
    move-object v0, v1

    .line 9000
    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->b:Ljava/lang/String;

    return-object v0
.end method
