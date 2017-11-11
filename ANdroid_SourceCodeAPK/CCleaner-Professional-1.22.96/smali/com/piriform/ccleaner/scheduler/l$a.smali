.class public interface abstract Lcom/piriform/ccleaner/scheduler/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/piriform/ccleaner/scheduler/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/piriform/ccleaner/scheduler/l$a$1;

    invoke-direct {v0}, Lcom/piriform/ccleaner/scheduler/l$a$1;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/l$a;->a:Lcom/piriform/ccleaner/scheduler/l$a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract f()V
.end method
