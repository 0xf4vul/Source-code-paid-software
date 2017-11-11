.class public final Lf/d/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/j$a;
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

.field final b:Lf/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d;Lf/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d",
            "<TT;>;",
            "Lf/c/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lf/d/a/j;->a:Lf/d;

    .line 38
    iput-object p2, p0, Lf/d/a/j;->b:Lf/c/e;

    .line 39
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    check-cast p1, Lf/i;

    .line 1043
    new-instance v0, Lf/d/a/j$a;

    iget-object v1, p0, Lf/d/a/j;->b:Lf/c/e;

    invoke-direct {v0, p1, v1}, Lf/d/a/j$a;-><init>(Lf/i;Lf/c/e;)V

    .line 1044
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 1045
    iget-object v1, p0, Lf/d/a/j;->a:Lf/d;

    invoke-virtual {v1, v0}, Lf/d;->a(Lf/i;)Lf/j;

    .line 30
    return-void
.end method
