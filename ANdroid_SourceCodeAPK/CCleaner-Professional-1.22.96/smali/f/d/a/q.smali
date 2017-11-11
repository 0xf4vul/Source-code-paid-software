.class public final Lf/d/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lf/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/f",
            "<TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d;Lf/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d",
            "<TT;>;",
            "Lf/c/f",
            "<TT;TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lf/d/a/q;->a:Lf/d;

    .line 35
    iput-object p2, p0, Lf/d/a/q;->b:Lf/c/f;

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 27
    check-cast p1, Lf/i;

    .line 1040
    new-instance v0, Lf/d/a/q$a;

    iget-object v1, p0, Lf/d/a/q;->b:Lf/c/f;

    invoke-direct {v0, p1, v1}, Lf/d/a/q$a;-><init>(Lf/i;Lf/c/f;)V

    .line 1041
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 1042
    new-instance v1, Lf/d/a/q$1;

    invoke-direct {v1, p0, v0}, Lf/d/a/q$1;-><init>(Lf/d/a/q;Lf/d/a/q$a;)V

    invoke-virtual {p1, v1}, Lf/i;->a(Lf/f;)V

    .line 1048
    iget-object v1, p0, Lf/d/a/q;->a:Lf/d;

    invoke-virtual {v1, v0}, Lf/d;->a(Lf/i;)Lf/j;

    .line 27
    return-void
.end method
