.class public final Lf/d/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/ad$a;,
        Lf/d/a/ad$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lf/d/a/ad;->a:Lf/d;

    .line 34
    return-void
.end method

.method private a(Lf/i;)Lf/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)",
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lf/j/c;

    invoke-direct {v0}, Lf/j/c;-><init>()V

    .line 39
    new-instance v1, Lf/d/b/a;

    invoke-direct {v1}, Lf/d/b/a;-><init>()V

    .line 40
    new-instance v2, Lf/d/a/ad$b;

    iget-object v3, p0, Lf/d/a/ad;->a:Lf/d;

    invoke-direct {v2, p1, v0, v1, v3}, Lf/d/a/ad$b;-><init>(Lf/i;Lf/j/c;Lf/d/b/a;Lf/d;)V

    .line 41
    invoke-virtual {v0, v2}, Lf/j/c;->a(Lf/j;)V

    .line 42
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 43
    invoke-virtual {p1, v1}, Lf/i;->a(Lf/f;)V

    .line 44
    return-object v2
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lf/i;

    invoke-direct {p0, p1}, Lf/d/a/ad;->a(Lf/i;)Lf/i;

    move-result-object v0

    return-object v0
.end method
