.class final Lf/d/e/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Lf/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/e",
            "<",
            "Lf/c/a;",
            "Lf/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lf/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lf/c/e",
            "<",
            "Lf/c/a;",
            "Lf/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lf/d/e/k$b;->a:Ljava/lang/Object;

    .line 154
    iput-object p2, p0, Lf/d/e/k$b;->b:Lf/c/e;

    .line 155
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 148
    check-cast p1, Lf/i;

    .line 1159
    new-instance v0, Lf/d/e/k$c;

    iget-object v1, p0, Lf/d/e/k$b;->a:Ljava/lang/Object;

    iget-object v2, p0, Lf/d/e/k$b;->b:Lf/c/e;

    invoke-direct {v0, p1, v1, v2}, Lf/d/e/k$c;-><init>(Lf/i;Ljava/lang/Object;Lf/c/e;)V

    invoke-virtual {p1, v0}, Lf/i;->a(Lf/f;)V

    .line 148
    return-void
.end method
