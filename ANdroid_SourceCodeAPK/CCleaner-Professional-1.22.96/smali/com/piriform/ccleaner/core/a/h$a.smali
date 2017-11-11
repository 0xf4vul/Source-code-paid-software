.class public interface abstract Lcom/piriform/ccleaner/core/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/core/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/piriform/ccleaner/core/a/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/piriform/ccleaner/core/a/h$a$1;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/a/h$a$1;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/core/a/h$a;->a:Lcom/piriform/ccleaner/core/a/h$a;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/piriform/ccleaner/core/a/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract s_()V
.end method
