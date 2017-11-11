.class public final Lcom/avast/android/e/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/avast/android/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/avast/android/d/a;

    const-string/jumbo v1, "retry"

    invoke-direct {v0, v1}, Lcom/avast/android/d/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avast/android/e/c/a;->a:Lcom/avast/android/d/a;

    return-void
.end method
