.class public final Lf/d/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/l$1;,
        Lf/d/a/l$e;,
        Lf/d/a/l$b;,
        Lf/d/a/l$d;,
        Lf/d/a/l$c;,
        Lf/d/a/l$f;,
        Lf/d/a/l$g;,
        Lf/d/a/l$a;
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
.field final a:Lf/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/b",
            "<",
            "Lf/a",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method public constructor <init>(Lf/c/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/b",
            "<",
            "Lf/a",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lf/d/a/l;->a:Lf/c/b;

    .line 39
    iput p2, p0, Lf/d/a/l;->b:I

    .line 40
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 31
    check-cast p1, Lf/i;

    .line 1046
    sget-object v0, Lf/d/a/l$1;->a:[I

    iget v1, p0, Lf/d/a/l;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1064
    new-instance v0, Lf/d/a/l$b;

    sget v1, Lf/d/e/i;->b:I

    invoke-direct {v0, p1, v1}, Lf/d/a/l$b;-><init>(Lf/i;I)V

    .line 1069
    :goto_0
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 1070
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/f;)V

    .line 1071
    iget-object v1, p0, Lf/d/a/l;->a:Lf/c/b;

    invoke-interface {v1, v0}, Lf/c/b;->call(Ljava/lang/Object;)V

    .line 31
    return-void

    .line 1048
    :pswitch_0
    new-instance v0, Lf/d/a/l$g;

    invoke-direct {v0, p1}, Lf/d/a/l$g;-><init>(Lf/i;)V

    goto :goto_0

    .line 1052
    :pswitch_1
    new-instance v0, Lf/d/a/l$d;

    invoke-direct {v0, p1}, Lf/d/a/l$d;-><init>(Lf/i;)V

    goto :goto_0

    .line 1056
    :pswitch_2
    new-instance v0, Lf/d/a/l$c;

    invoke-direct {v0, p1}, Lf/d/a/l$c;-><init>(Lf/i;)V

    goto :goto_0

    .line 1060
    :pswitch_3
    new-instance v0, Lf/d/a/l$e;

    invoke-direct {v0, p1}, Lf/d/a/l$e;-><init>(Lf/i;)V

    goto :goto_0

    .line 1046
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
