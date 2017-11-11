.class public final Lcom/google/android/gms/internal/l;
.super Lcom/google/android/gms/common/api/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Lcom/google/android/gms/common/api/n",
        "<TO;>;"
    }
.end annotation


# instance fields
.field final g:Lcom/google/android/gms/common/api/a$f;

.field private final h:Lcom/google/android/gms/internal/i;

.field private final i:Lcom/google/android/gms/common/internal/o;

.field private final j:Lcom/google/android/gms/common/api/a$b;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/internal/i;Lcom/google/android/gms/common/internal/o;Lcom/google/android/gms/common/api/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/google/android/gms/internal/i;",
            "Lcom/google/android/gms/common/internal/o;",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/er;",
            "Lcom/google/android/gms/internal/es;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/n;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/l;->g:Lcom/google/android/gms/common/api/a$f;

    iput-object p5, p0, Lcom/google/android/gms/internal/l;->h:Lcom/google/android/gms/internal/i;

    iput-object p6, p0, Lcom/google/android/gms/internal/l;->i:Lcom/google/android/gms/common/internal/o;

    iput-object p7, p0, Lcom/google/android/gms/internal/l;->j:Lcom/google/android/gms/common/api/a$b;

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->f:Lcom/google/android/gms/internal/x;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Lcom/google/android/gms/internal/x$a;)Lcom/google/android/gms/common/api/a$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/x$a",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/l;->h:Lcom/google/android/gms/internal/i;

    .line 1000
    iput-object p2, v0, Lcom/google/android/gms/internal/i;->b:Lcom/google/android/gms/internal/j;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/l;->g:Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/ao;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ao;

    iget-object v1, p0, Lcom/google/android/gms/internal/l;->i:Lcom/google/android/gms/common/internal/o;

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->j:Lcom/google/android/gms/common/api/a$b;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ao;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/o;Lcom/google/android/gms/common/api/a$b;)V

    return-object v0
.end method
