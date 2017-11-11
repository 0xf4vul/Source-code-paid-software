.class public final Lcom/piriform/ccleaner/f/j$b;
.super Lcom/piriform/ccleaner/core/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/d",
        "<",
        "Lcom/piriform/ccleaner/f/j;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final b:Lcom/piriform/ccleaner/f/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/piriform/ccleaner/core/d;-><init>()V

    .line 151
    new-instance v0, Lcom/piriform/ccleaner/f/k;

    invoke-direct {v0}, Lcom/piriform/ccleaner/f/k;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/f/j$b;->b:Lcom/piriform/ccleaner/f/k;

    .line 152
    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 147
    check-cast p1, Lcom/piriform/ccleaner/f/j;

    check-cast p2, Lcom/piriform/ccleaner/f/j;

    .line 1158
    iget-object v0, p0, Lcom/piriform/ccleaner/f/j$b;->b:Lcom/piriform/ccleaner/f/k;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/f/j$b;->b()Z

    move-result v1

    .line 2038
    iput-boolean v1, v0, Lcom/piriform/ccleaner/f/k;->a:Z

    .line 1159
    iget-object v0, p0, Lcom/piriform/ccleaner/f/j$b;->b:Lcom/piriform/ccleaner/f/k;

    invoke-virtual {v0, p1, p2}, Lcom/piriform/ccleaner/f/k;->a(Lcom/piriform/ccleaner/f/j;Lcom/piriform/ccleaner/f/j;)I

    move-result v0

    .line 147
    return v0
.end method
