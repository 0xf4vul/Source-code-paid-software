.class public final Lcom/avast/android/burger/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/avast/android/burger/c/a;

.field public static final b:Lcom/avast/android/burger/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "burger"

    invoke-direct {v0, v1}, Lcom/avast/android/burger/c/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    .line 20
    new-instance v0, Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "burgerEvents"

    invoke-direct {v0, v1}, Lcom/avast/android/burger/c/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avast/android/burger/c/b;->b:Lcom/avast/android/burger/c/a;

    return-void
.end method
