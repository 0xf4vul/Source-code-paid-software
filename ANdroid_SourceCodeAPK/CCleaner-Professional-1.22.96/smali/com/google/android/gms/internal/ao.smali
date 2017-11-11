.class public final Lcom/google/android/gms/internal/ao;
.super Lcom/google/android/gms/internal/eu;

# interfaces
.implements Lcom/google/android/gms/common/api/c$b;
.implements Lcom/google/android/gms/common/api/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ao$a;
    }
.end annotation


# static fields
.field private static i:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/er;",
            "Lcom/google/android/gms/internal/es;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/os/Handler;

.field final c:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/er;",
            "Lcom/google/android/gms/internal/es;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/google/android/gms/common/internal/o;

.field g:Lcom/google/android/gms/internal/er;

.field h:Lcom/google/android/gms/internal/ao$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/eq;->c:Lcom/google/android/gms/common/api/a$b;

    sput-object v0, Lcom/google/android/gms/internal/ao;->i:Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/eu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ao;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ao;->b:Landroid/os/Handler;

    sget-object v0, Lcom/google/android/gms/internal/ao;->i:Lcom/google/android/gms/common/api/a$b;

    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->c:Lcom/google/android/gms/common/api/a$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ao;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/o;Lcom/google/android/gms/common/api/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/o;",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/er;",
            "Lcom/google/android/gms/internal/es;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/eu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ao;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ao;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/ao;->f:Lcom/google/android/gms/common/internal/o;

    .line 1000
    iget-object v0, p3, Lcom/google/android/gms/common/internal/o;->b:Ljava/util/Set;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->e:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ao;->c:Lcom/google/android/gms/common/api/a$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ao;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ao;Lcom/google/android/gms/internal/zzbaw;)V
    .locals 5

    .prologue
    .line 2000
    .line 3000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbaw;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzbaw;->c:Lcom/google/android/gms/common/internal/zzaf;

    .line 5000
    iget-object v0, v1, Lcom/google/android/gms/common/internal/zzaf;->c:Lcom/google/android/gms/common/ConnectionResult;

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v1, "SignInCoordinator"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ao;->h:Lcom/google/android/gms/internal/ao$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ao$a;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->g:Lcom/google/android/gms/internal/er;

    invoke-interface {v0}, Lcom/google/android/gms/internal/er;->a()V

    .line 0
    return-void

    .line 2000
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->h:Lcom/google/android/gms/internal/ao$a;

    .line 6000
    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzaf;->b:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/y$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/y;

    move-result-object v1

    .line 2000
    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->e:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ao$a;->a(Lcom/google/android/gms/common/internal/y;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->g:Lcom/google/android/gms/internal/er;

    invoke-interface {v0}, Lcom/google/android/gms/internal/er;->a()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->g:Lcom/google/android/gms/internal/er;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/ew;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->h:Lcom/google/android/gms/internal/ao$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ao$a;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzbaw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ao$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ao$1;-><init>(Lcom/google/android/gms/internal/ao;Lcom/google/android/gms/internal/zzbaw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
