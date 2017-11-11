.class public final Lf/d/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/x$b;,
        Lf/d/a/x$d;,
        Lf/d/a/x$c;,
        Lf/d/a/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$b",
        "<TT;",
        "Lf/d",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/d/a/x;->a:Z

    .line 100
    const v0, 0x7fffffff

    iput v0, p0, Lf/d/a/x;->b:I

    .line 101
    return-void
.end method

.method private a(Lf/i;)Lf/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)",
            "Lf/i",
            "<",
            "Lf/d",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lf/d/a/x$d;

    iget-boolean v1, p0, Lf/d/a/x;->a:Z

    iget v2, p0, Lf/d/a/x;->b:I

    invoke-direct {v0, p1, v1, v2}, Lf/d/a/x$d;-><init>(Lf/i;ZI)V

    .line 106
    new-instance v1, Lf/d/a/x$c;

    invoke-direct {v1, v0}, Lf/d/a/x$c;-><init>(Lf/d/a/x$d;)V

    .line 107
    iput-object v1, v0, Lf/d/a/x$d;->e:Lf/d/a/x$c;

    .line 109
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 110
    invoke-virtual {p1, v1}, Lf/i;->a(Lf/f;)V

    .line 112
    return-object v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, Lf/i;

    invoke-direct {p0, p1}, Lf/d/a/x;->a(Lf/i;)Lf/i;

    move-result-object v0

    return-object v0
.end method
