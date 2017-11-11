.class public final enum Lcom/evernote/android/job/i$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/evernote/android/job/i$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/evernote/android/job/i$c;

.field public static final enum b:Lcom/evernote/android/job/i$c;

.field public static final enum c:Lcom/evernote/android/job/i$c;

.field public static final enum d:Lcom/evernote/android/job/i$c;

.field private static final synthetic e:[Lcom/evernote/android/job/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1006
    new-instance v0, Lcom/evernote/android/job/i$c;

    const-string/jumbo v1, "ANY"

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/job/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/i$c;->a:Lcom/evernote/android/job/i$c;

    .line 1010
    new-instance v0, Lcom/evernote/android/job/i$c;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/evernote/android/job/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/i$c;->b:Lcom/evernote/android/job/i$c;

    .line 1014
    new-instance v0, Lcom/evernote/android/job/i$c;

    const-string/jumbo v1, "UNMETERED"

    invoke-direct {v0, v1, v4}, Lcom/evernote/android/job/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/i$c;->c:Lcom/evernote/android/job/i$c;

    .line 1018
    new-instance v0, Lcom/evernote/android/job/i$c;

    const-string/jumbo v1, "NOT_ROAMING"

    invoke-direct {v0, v1, v5}, Lcom/evernote/android/job/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/i$c;->d:Lcom/evernote/android/job/i$c;

    .line 1002
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/evernote/android/job/i$c;

    sget-object v1, Lcom/evernote/android/job/i$c;->a:Lcom/evernote/android/job/i$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evernote/android/job/i$c;->b:Lcom/evernote/android/job/i$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evernote/android/job/i$c;->c:Lcom/evernote/android/job/i$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evernote/android/job/i$c;->d:Lcom/evernote/android/job/i$c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/evernote/android/job/i$c;->e:[Lcom/evernote/android/job/i$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1002
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/android/job/i$c;
    .locals 1

    .prologue
    .line 1002
    const-class v0, Lcom/evernote/android/job/i$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/i$c;

    return-object v0
.end method

.method public static values()[Lcom/evernote/android/job/i$c;
    .locals 1

    .prologue
    .line 1002
    sget-object v0, Lcom/evernote/android/job/i$c;->e:[Lcom/evernote/android/job/i$c;

    invoke-virtual {v0}, [Lcom/evernote/android/job/i$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/android/job/i$c;

    return-object v0
.end method
