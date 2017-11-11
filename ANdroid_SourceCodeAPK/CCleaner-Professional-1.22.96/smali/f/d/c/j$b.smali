.class final Lf/d/c/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lf/d/c/j$b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lf/c/a;

.field final b:Ljava/lang/Long;

.field final c:I


# direct methods
.method constructor <init>(Lf/c/a;Ljava/lang/Long;I)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lf/d/c/j$b;->a:Lf/c/a;

    .line 109
    iput-object p2, p0, Lf/d/c/j$b;->b:Ljava/lang/Long;

    .line 110
    iput p3, p0, Lf/d/c/j$b;->c:I

    .line 111
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 102
    check-cast p1, Lf/d/c/j$b;

    .line 1115
    iget-object v0, p0, Lf/d/c/j$b;->b:Ljava/lang/Long;

    iget-object v1, p1, Lf/d/c/j$b;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 1116
    if-nez v0, :cond_0

    .line 1117
    iget v0, p0, Lf/d/c/j$b;->c:I

    iget v1, p1, Lf/d/c/j$b;->c:I

    invoke-static {v0, v1}, Lf/d/c/j;->a(II)I

    move-result v0

    :cond_0
    return v0
.end method
