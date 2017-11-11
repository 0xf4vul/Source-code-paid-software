.class final Lcom/piriform/ccleaner/scheduler/o$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/f",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        "Lcom/piriform/ccleaner/l/c;",
        "Lcom/piriform/ccleaner/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/piriform/ccleaner/scheduler/o;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/o;J)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/o$3;->b:Lcom/piriform/ccleaner/scheduler/o;

    iput-wide p2, p0, Lcom/piriform/ccleaner/scheduler/o$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 112
    check-cast p1, Lcom/piriform/ccleaner/l/c;

    check-cast p2, Lcom/piriform/ccleaner/l/c;

    .line 1115
    iget-wide v0, p0, Lcom/piriform/ccleaner/scheduler/o$3;->a:J

    invoke-static {p1, p2, v0, v1}, Lcom/piriform/ccleaner/l/b;->a(Lcom/piriform/ccleaner/l/c;Lcom/piriform/ccleaner/l/c;J)Lcom/piriform/ccleaner/l/c;

    move-result-object v0

    .line 112
    return-object v0
.end method
