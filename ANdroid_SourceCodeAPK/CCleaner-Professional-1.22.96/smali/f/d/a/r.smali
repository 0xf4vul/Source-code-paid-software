.class public final Lf/d/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$b",
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lf/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Z


# direct methods
.method public constructor <init>(Lf/c/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lf/d/a/r;->a:Lf/c/e;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/r;->b:Z

    .line 38
    return-void
.end method

.method private a(Lf/i;)Lf/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lf/d/b/b;

    invoke-direct {v0, p1}, Lf/d/b/b;-><init>(Lf/i;)V

    .line 43
    new-instance v1, Lf/d/a/r$1;

    invoke-direct {v1, p0, v0, p1}, Lf/d/a/r$1;-><init>(Lf/d/a/r;Lf/d/b/b;Lf/i;)V

    .line 92
    invoke-virtual {p1, v1}, Lf/i;->a(Lf/j;)V

    .line 93
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/f;)V

    .line 94
    return-object v1
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lf/i;

    invoke-direct {p0, p1}, Lf/d/a/r;->a(Lf/i;)Lf/i;

    move-result-object v0

    return-object v0
.end method
