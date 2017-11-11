.class public final Lcom/google/android/gms/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/b/g$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/g$a;

    invoke-direct {v0}, Lcom/google/android/gms/b/g$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/g;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/b/g$1;

    invoke-direct {v0}, Lcom/google/android/gms/b/g$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/g;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
